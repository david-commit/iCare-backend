class Patient < ApplicationRecord
 has_secure_password

 # has_many :caregivers
 has_many :appointments

 validates :name, presence: true
 validates :condition, presence: true
 
end
