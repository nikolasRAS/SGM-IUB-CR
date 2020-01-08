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

ActiveRecord::Schema.define(version: 2020_01_08_120525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.string "address"
    t.string "number"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_addresses_on_person_id"
  end

  create_table "couples", force: :cascade do |t|
    t.bigint "husband_id", null: false
    t.bigint "wife_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["husband_id"], name: "index_couples_on_husband_id"
    t.index ["wife_id"], name: "index_couples_on_wife_id"
  end

  create_table "emails", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_emails_on_person_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "description"
    t.string "year"
    t.string "period"
    t.string "place"
    t.boolean "accomplished"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mountings", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "meeting_id", null: false
    t.bigint "person_id", null: false
    t.boolean "coordinator"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meeting_id"], name: "index_mountings_on_meeting_id"
    t.index ["person_id"], name: "index_mountings_on_person_id"
    t.index ["team_id"], name: "index_mountings_on_team_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.date "bith_date"
    t.string "gender"
    t.string "marital_status"
    t.bigint "sacrament_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sacrament_id"], name: "index_people_on_sacrament_id"
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.string "type"
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_phone_numbers_on_person_id"
  end

  create_table "sacraments", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "description"
    t.integer "coordination_couple"
    t.integer "support_couple"
    t.integer "coordination_young"
    t.integer "support_young"
    t.boolean "manager"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "people"
  add_foreign_key "couples", "people", column: "husband_id"
  add_foreign_key "couples", "people", column: "wife_id"
  add_foreign_key "emails", "people"
  add_foreign_key "mountings", "meetings"
  add_foreign_key "mountings", "people"
  add_foreign_key "mountings", "teams"
  add_foreign_key "people", "sacraments"
  add_foreign_key "phone_numbers", "people"
end
