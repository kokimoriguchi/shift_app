class CreateShiftDates < ActiveRecord::Migration[7.0]
  def change
    create_table :shift_dates do |t|
      t.references :manager, null: false, foreign_key: true
      t.string :name
      t.datetime :start_time
      t.datetime :finish_time

      t.timestamps
    end
  end
end
