class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :practitioner_id, :practitioner_name, :duration, :appointment_type, :booked_at

  def practitioner_name
    "#{self.object.practitioner.name}"
  end

  def booked_at
    "#{self.object.created_at}"
  end

end
