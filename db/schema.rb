# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_10_193715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "families", id: false, force: :cascade do |t|
    t.integer "person_id"
    t.integer "pet_id"
  end

  create_table "people", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "age"
  end

  create_table "pets", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "age"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "families", "people", name: "families_person_id_fkey"
  add_foreign_key "families", "pets", name: "families_pet_id_fkey"
end
