class Appointment < ApplicationRecord

 belongs_to :patient
 belongs_to :practitioner

 validates :duration, presence: true
 validates :appointment_type, presence: true

end
