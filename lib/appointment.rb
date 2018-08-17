class Appointment
  attr_accessor :date
  attr_reader :patient, :doctor
  @@all = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    self.all << self
  end

  def self.all
    @@all
  end

end
