class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

    #The Patient class needs an instance method,
    # #new_appointment, that takes in an argument of a
    # doctor and a date and creates a new appointment. The appointment
    # should know that it belongs to the patient.



  def appointments

    Appointment.all.select do |appointment|
    appointment.patient == self
    end
  end
    # The Patient class needs an instance method, #appointments, that
    # iterates through the appointments array and returns appointments
    # that belong to the patient.

  def doctors
    appointments.map do |instance_of_apointment|
      instance_of_apointment.doctor
    end
  end
end

   # The Patient class needs an instance method, #doctors, that iterates over that patient's
   # appointments and collects the doctor that belongs to each appointment.
