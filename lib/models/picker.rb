require "./lib/error/no_songs"

class Picker
  def initialize(songs:, last_played: nil)
    @songs = songs
    @last_played = last_played
  end

  def pick
    raise Error::NoSongs if @songs.empty?

    chooseable[random_song_index(max: chooseable.length)]
  end

  private

  def chooseable
    @chooseable ||= begin
      return @songs if @last_played.nil? || no_songs_from_other_artists?
  
      songs_from_other_artists
    end
  end

  def songs_from_other_artists
    @songs_from_other_artists ||= @songs.filter { |song| song[:artist] != @last_played[:artist] }
  end

  def no_songs_from_other_artists?
    songs_from_other_artists.empty?
  end

  def random_song_index(max:)
    rand(0...max)
  end
end