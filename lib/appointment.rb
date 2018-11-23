class Appointment
  attr_reader :patient, :doctor, :date

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  @@all = Array.new

  def self.all
    @@all
  end
end
