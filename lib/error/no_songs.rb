module Error
  class NoSongs < StandardError
    def message
      "You must provide at least one song"
    end
  end
end
