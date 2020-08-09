class Doctor

  attr_reader :name

  @@all_d = []

  def initialize(name)
    @name = name
    @@all_d << self
  end

  def appointments
