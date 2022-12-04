class Caregiver < ApplicationRecord
 belongs_to :patient

 validates :name, presence: true
 validates :phone, presence: true, length: { minimum: 8 }
 validates :relation, presence: true
 
end
