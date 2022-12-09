class Caregiver < ApplicationRecord
 has_many :patients

 validates :name, presence: true
 validates :phone, presence: true, length: { minimum: 8 }
 validates :relation, presence: true
 
end
