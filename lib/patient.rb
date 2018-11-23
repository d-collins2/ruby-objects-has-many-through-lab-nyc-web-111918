class Patient
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
    Appointment.new(self, name, date)
  end

  def appointments
    Appointment.all.select {|event| event.patient == self}
  end

  def doctors
    appointments.map{|event| event.doctor }
  end
end
