require "pry"
class Doctor
     attr_reader :name 
  @@all = []
  
    def initialize(name)
      @name = name
      @patients = []
      @@all << self
    end
     
     def self.all
      @@all
     end

    def new_appointment(patient, date)
      
      Appointment.new(date, patient, self)
    end

    def patients 
    appointments.map do |patient|
      patient.doctor == self
    end
    end
  
    def appointments
      Appointment.all.select do |appointment| 
        appointment.doctor == self
      
      end
    end
  
    def patients
      self.appointments.collect {|appointment| appointment.patient}
    end
  end