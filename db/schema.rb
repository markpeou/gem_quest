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

ActiveRecord::Schema.define(version: 20180208064522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quests", force: :cascade do |t|
    t.text "instructions"
    t.string "answer"
    t.bigint "location_id"
    t.integer "point_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.float "longitude"
    t.float "latitude"
    t.index ["location_id"], name: "index_quests_on_location_id"
  end

  create_table "team_quests", force: :cascade do |t|
    t.string "answer_input"
    t.bigint "team_id"
    t.bigint "quest_id"
    t.boolean "answer_correct"
    t.integer "points_record"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quest_id"], name: "index_team_quests_on_quest_id"
    t.index ["team_id"], name: "index_team_quests_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "members"
    t.integer "score"
    t.text "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
    t.boolean "admin_access"
    t.text "image_url"
  end

  add_foreign_key "quests", "locations"
  add_foreign_key "team_quests", "quests"
  add_foreign_key "team_quests", "teams"
end
