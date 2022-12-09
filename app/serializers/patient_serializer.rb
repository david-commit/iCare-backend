class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :condition, :caregiver_id
    
end
