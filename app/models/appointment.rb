class Appointment < ApplicationRecord

 belongs_to :patient, dependent: :destroy
 belongs_to :practitioner, dependent: :destroy

 validates :duration, presence: true
 validates :appointment_type, presence: true

end
