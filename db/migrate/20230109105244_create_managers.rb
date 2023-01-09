class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.string :user_name
      t.integer :staff_number
      t.string :password_digest

      t.timestamps
    end
  end
end
