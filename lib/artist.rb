class Artist

  attr_reader :name

  @@all__ar = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all_ar
  end

end
