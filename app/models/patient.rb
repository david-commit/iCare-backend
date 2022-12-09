class Patient < ApplicationRecord
 has_secure_password

 belongs_to :caregiver
 has_many :appointments
 

 validates :name, presence: true
 validates :condition, presence: true
end
