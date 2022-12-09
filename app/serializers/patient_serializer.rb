class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :condition
  # has_many :caregivers
  has_many :appointments
end
