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

ActiveRecord::Schema[7.0].define(version: 2023_06_15_002458) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.integer "area_type"
    t.string "name"
    t.boolean "visible", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bills", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "description"
    t.date "date_created"
    t.date "date_expired"
    t.integer "bill_ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "area_id"
    t.index ["area_id"], name: "index_bills_on_area_id"
  end

  create_table "payments", force: :cascade do |t|
    t.date "date_created"
    t.float "amount"
    t.integer "voucher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "bill_id", null: false
    t.index ["bill_id"], name: "index_payments_on_bill_id"
  end

  add_foreign_key "bills", "areas"
  add_foreign_key "payments", "bills"
end
