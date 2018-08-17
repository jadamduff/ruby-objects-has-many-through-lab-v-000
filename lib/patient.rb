class Patient
  attr_accessor :name
  attr_reader :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    self.appointments << appointment
    doctor.appointments << appointment
  end

  def doctors
    self.appointments.map {|app| return app.doctor if app.patient == self}
  end

end
