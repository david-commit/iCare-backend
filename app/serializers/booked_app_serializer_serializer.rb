class BookedAppSerializerSerializer < ActiveModel::Serializer
  attributes :id, :name, :condition, :caregiver_id

  has_many :appointments
end
