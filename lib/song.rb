class Song

  attr_reader :title, :artist, :genre

  @@all_s = []

    def initialize(title, artist, genre)
      @title = title
      @artist = artist
      @genre = genre
      @@all_s << self
    end

    def self.all
      @@all_s
    end
end
