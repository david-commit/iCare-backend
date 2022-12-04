class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :condition, :caregiver_id
  # has_many :caregivers
end
