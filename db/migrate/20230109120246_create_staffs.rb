class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :staff_name
      t.integer :staff_number
      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
