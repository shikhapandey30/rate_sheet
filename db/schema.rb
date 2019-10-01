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

ActiveRecord::Schema.define(version: 2019_09_26_125554) do

  create_table "adjustments", force: :cascade do |t|
    t.integer "ltv", default: 80
    t.integer "fico", default: 700
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string "loan_purpose", default: ""
    t.string "loan_size", default: ""
    t.string "loan_type", default: ""
    t.integer "term", default: 30
    t.float "interest_rate", default: 4.0
    t.integer "lock_period", default: 30
    t.boolean "fannie_mae", default: false
    t.json "base_rate", default: 0
    t.json "adjustment_rate", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
