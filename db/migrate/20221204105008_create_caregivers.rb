class CreateCaregivers < ActiveRecord::Migration[7.0]
  def change
    create_table :caregivers do |t|
      t.string :name
      t.string :phone
      t.string :relation
      # t.integer :patient_id

      t.timestamps
    end
  end
end
