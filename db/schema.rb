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

ActiveRecord::Schema[7.0].define(version: 2023_07_08_182346) do
  create_table "buildings", force: :cascade do |t|
    t.string "address"
    t.integer "number_of_floors"
    t.string "amenities"
    t.integer "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_buildings_on_owner_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "contact_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rent_payments", force: :cascade do |t|
    t.decimal "amount"
    t.date "payment_date"
    t.integer "tenant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_rent_payments_on_tenant_id"
  end

  create_table "service_payments", force: :cascade do |t|
    t.decimal "amount"
    t.date "payment_date"
    t.string "service_type"
    t.integer "tenant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_service_payments_on_tenant_id"
  end

  create_table "tenants", force: :cascade do |t|
    t.string "name"
    t.string "contact_details"
    t.string "lease_details"
    t.integer "unit_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_tenants_on_unit_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "number"
    t.integer "floor"
    t.string "size"
    t.integer "building_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_units_on_building_id"
  end

  create_table "utility_payments", force: :cascade do |t|
    t.decimal "amount"
    t.date "payment_date"
    t.string "utility_type"
    t.integer "tenant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_utility_payments_on_tenant_id"
  end

  add_foreign_key "buildings", "owners"
  add_foreign_key "rent_payments", "tenants"
  add_foreign_key "service_payments", "tenants"
  add_foreign_key "tenants", "units"
  add_foreign_key "units", "buildings"
  add_foreign_key "utility_payments", "tenants"
end
