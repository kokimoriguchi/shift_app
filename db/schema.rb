# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_09_122301) do
  create_table "managers", charset: "utf8mb4", force: :cascade do |t|
    t.string "user_name"
    t.integer "staff_number"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "private_shifts", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "staff_id", null: false
    t.datetime "start"
    t.datetime "finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_id"], name: "index_private_shifts_on_staff_id"
  end

  create_table "shift_dates", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "manager_id", null: false
    t.string "name"
    t.datetime "start_time"
    t.datetime "finish_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_shift_dates_on_manager_id"
  end

  create_table "staffs", charset: "utf8mb4", force: :cascade do |t|
    t.string "staff_name"
    t.integer "staff_number"
    t.bigint "manager_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_staffs_on_manager_id"
  end

  add_foreign_key "private_shifts", "staffs"
  add_foreign_key "shift_dates", "managers"
  add_foreign_key "staffs", "managers"
end
