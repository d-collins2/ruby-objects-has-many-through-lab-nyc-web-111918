class Doctor
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = Array.new

  def self.all
    @@all
  end

  def new_appointment(name, date)
    Appointment.new(name, self, date)
  end

  def appointments
    Appointment.all.select {|event| event.doctor == self}
  end

  def patients
    appointments.map{|event| event.patient }
  end
end
