class Doctor
  attr_accessor :name
  attr_reader :appointments
  @@all = []
  
  def initialize(name)
    @name = name
    self.all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(patient, self, date)
    self.appointments << appointment
    patient.appointments << appointment
  end
  
end
