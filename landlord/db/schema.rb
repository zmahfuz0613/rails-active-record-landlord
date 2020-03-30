# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_30_202423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartments", force: :cascade do |t|
    t.text "address"
    t.integer "monthly_rent"
    t.integer "sqft"
    t.integer "num_beds"
    t.integer "num_baths"
    t.boolean "allows_pets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "ssn"
    t.boolean "has_pets"
    t.bigint "apartment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["apartment_id"], name: "index_tenants_on_apartment_id"
  end

  add_foreign_key "tenants", "apartments"
end
