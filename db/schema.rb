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

ActiveRecord::Schema.define(version: 20180301193450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string "school"
    t.integer "amount", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donations", force: :cascade do |t|
    t.integer "amount", default: 0
    t.datetime "date"
    t.bigint "campaign_id"
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_donations_on_campaign_id"
  end

  create_table "matching_rules", force: :cascade do |t|
    t.float "ratio"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "donor", default: "Anonymous"
    t.integer "cap"
    t.integer "total", default: 0
    t.string "type_match"
    t.integer "fixed_per_donation"
    t.index ["campaign_id"], name: "index_matching_rules_on_campaign_id"
  end

  add_foreign_key "donations", "campaigns"
  add_foreign_key "matching_rules", "campaigns"
end
