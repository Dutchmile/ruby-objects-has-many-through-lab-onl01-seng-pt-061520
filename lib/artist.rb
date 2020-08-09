class Artist

  attr_reader :name

  @@all_ar = []

  def initialize(name)
    @name = name
    @@all_ar << self
  end

  def self.all
    @@all_ar
  end

  def songs
    Song.all.select {|s| s.artist = self}
  end


end
