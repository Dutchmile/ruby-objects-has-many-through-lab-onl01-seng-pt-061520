class Patient

  attr_accessor :name
  @@all_p = []

  def initialize(name)
    @name = name
    @@all_p << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def self.all
    @@all_p
  end

  def appointments
    Appointments.all.select {|a| a.patient == self}
  end

  def doctors
    doctors = []
    Appointments.all.select {|a| doctors << a if a.patient == self}
    doctors
  end

end
