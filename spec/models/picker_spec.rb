require "rspec"
require "./lib/models/shuffler"
require "./spec/mocks/songs"

# rspec spec/models/picker_spec.rb
RSpec.describe Picker do
  # find the assertion that #pick returns a song inside shuffler_spec.rb
  describe "#pick" do
    it "returns an error if no songs provided" do
      shuffler = described_class.new(songs: Mocks::Songs::EMPTY_LIST)

      expect { shuffler.pick }.to raise_error(/You must provide at least one song/)
    end
  end
end
# rspec spec/models/picker_spec.rb
