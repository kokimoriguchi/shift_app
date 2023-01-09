class CreatePrivateShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :private_shifts do |t|
      t.references :staff, null: false, foreign_key: true
      t.datetime :start
      t.datetime :finish

      t.timestamps
    end
  end
end
