class Appointment
  attr_accessor :doctor, :patient, :name 

  def initialize(name, patient)
    @name = name 
    self.patient = patient  
    patient.add_appointment(self) 
  end 
end
# ///////////////////////////////////
class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
end