class CreatePractitioners < ActiveRecord::Migration[7.0]
  def change
    create_table :practitioners do |t|
      t.string :name
      t.string :speciality

      t.timestamps
    end
  end
end
