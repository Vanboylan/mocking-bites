class Track
    def initialize(title, artist)
        @title = title
        @artist = artist # title and artist are both strings
    end

    def matches?(keyword) # keyword is a string
      @title.include?(keyword) || @artist.include?(keyword)
    end
  end