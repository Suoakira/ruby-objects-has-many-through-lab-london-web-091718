require 'pry'
class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |array_of_appointment_instances|
      array_of_appointment_instances.doctor == self
    end
  end

    # The Doctor class needs an instance method, #appointments,
    # that iterates through all appointments and finds those belonging
    # to this doctor.


  def patients
    appointments.map do |patientS|
      patientS.patient
    end
    #The Doctor class needs an instance method, #patients, that iterates
    #over that doctor's appointments and collects the patient that belongs
    #to each appointment.
  end
end
