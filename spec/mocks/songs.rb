module Mocks
  module Songs
    EMPTY_LIST = []
    NORMAL_LIST = [
      {:artist=>"Van Halen", :song=>"Jump"},
      {:artist=>"Enya", :song=>"Orinoco Flow"},
      {:artist=>"Justine Clarke", :song=>"Dinosaur Stomp"},
      {:artist=>"Simian Mobile Disco", :song=>"Sleep Deprivation"},
      {:artist=>"Van Halen", :song=>"Panama"}
    ]
    LONELY_ARTIST_LIST = [
      {:artist=>"Enya", :song=>"Orinoco Flow"},
      {:artist=>"Van Halen", :song=>"Jump"},
      {:artist=>"Van Halen", :song=>"Panama"},
      {:artist=>"Van Halen", :song=>"Unchained"},
      {:artist=>"Van Halen", :song=>"Dreams"},
      {:artist=>"Van Halen", :song=>"Why Can't This Be Love"}
    ]
  end
end