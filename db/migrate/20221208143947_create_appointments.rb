class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.integer :patient_id
      t.integer :practitioner_id
      t.string :date
      t.string :duration
      t.string :appointment_type

      t.timestamps
    end
  end
end
