require "rspec"
require "./lib/models/shuffler"
require "./spec/mocks/songs"

# rspec spec/functional/shuffling_spec.rb
RSpec.describe Shuffler do
  describe "#pick" do
    # there's a chance that this might be intermittent? lets revisit down the line
    it "does not play the same song twice in a row" do
      play_order = []
      shuffler = described_class.new(songs: Mocks::Songs::NORMAL_LIST)

      Mocks::Songs::NORMAL_LIST.length.times { play_order << shuffler.pick }

      play_order.each_with_index do |song, index|
        next if play_order[index - 1].nil?

        # previous song should not be the same as current
        expect(play_order[index - 1]).to_not eq(song)
      end
    end

    it "plays all songs once before starting again" do
      play_order = []
      shuffler = described_class.new(songs: Mocks::Songs::NORMAL_LIST)

      # picking x times however many are in the list
      Mocks::Songs::NORMAL_LIST.length.times { play_order << shuffler.pick }

      # we expect the play order to have all the songs appear once
      expect(play_order).to match_array(Mocks::Songs::NORMAL_LIST)
    end

    it "does not play the same artist in sequence if others are available" do
      play_order = []
      shuffler = described_class.new(songs: Mocks::Songs::LONELY_ARTIST_LIST)

      2.times { play_order << shuffler.pick }

      artists_played = play_order.map { |song| song[:artist] }.uniq
      expect(artists_played.count).to eq(2)
    end
  end
end
# rspec spec/functional/shuffling_spec.rb
