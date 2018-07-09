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

ActiveRecord::Schema.define(version: 2018_07_09_175147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_infos", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "hometown", null: false
    t.string "email", null: false
    t.string "phone", null: false
    t.string "twitter_handle", null: false
    t.string "university", null: false
    t.string "field", null: false
    t.string "phrase", null: false
    t.string "developer_type", null: false
    t.string "why_startup", null: false
    t.string "fun_facts", null: false
    t.decimal "gpa", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
