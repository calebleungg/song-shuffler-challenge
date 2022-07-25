require "rspec"
require "./lib/models/shuffler"
require "./spec/mocks/songs"

# rspec spec/models/shuffler_spec.rb
RSpec.describe Shuffler do
  describe "#pick" do
    it "returns a song" do
      shuffler = described_class.new(songs: Mocks::Songs::NORMAL_LIST)
      song = shuffler.pick

      expect(song).to_not be_nil
      # expect the song's name to be from the mock list
      song_names = Mocks::Songs::NORMAL_LIST.map { |song| song[:song] }
      expect(song_names).to include(song[:song])
    end
  end
end
# rspec spec/models/shuffler_spec.rb
