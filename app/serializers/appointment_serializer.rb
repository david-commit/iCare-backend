class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :practitioner_id, :practitioner_name, :date, :duration, :appointment_type

  def practitioner_name
    "#{self.object.practitioner.name}"
  end
end
