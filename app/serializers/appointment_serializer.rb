class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :practitioner_id, :duration, :appointment_type
end
