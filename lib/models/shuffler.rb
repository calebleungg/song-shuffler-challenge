require "./lib/models/picker"

class Shuffler
  def initialize(songs:)
    @songs = songs
    @pickable_songs = songs
    @last_played = nil
  end

  def pick
    reset_pickable_songs! if all_songs_played?
    pick!
  end

  private

  # Assumption: every song in the list is different
  def pick!
    @picked = Picker.new(songs: @pickable_songs, last_played: @last_played).pick
    remove_picked_from_playable!
    set_last_played!
    @picked
  end

  def all_songs_played?
    @pickable_songs.empty?
  end
  
  def reset_pickable_songs!
    @pickable_songs = @songs
  end

  def set_last_played!
    @last_played = @picked
  end

  def remove_picked_from_playable!
    @pickable_songs = @pickable_songs.reject { |song| song == @picked }
  end
end