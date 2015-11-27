# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151124081652) do

  create_table "arms", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "skill",       limit: 255
    t.string   "zokusei",     limit: 255
    t.integer  "max_level",   limit: 4
    t.string   "series",      limit: 255
    t.integer  "attack",      limit: 4
    t.integer  "max_attack",  limit: 4
    t.string   "item",        limit: 255
    t.integer  "item_number", limit: 4
    t.float    "hyouka",      limit: 24
    t.string   "comment",     limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "arm_type",    limit: 255
    t.string   "rare",        limit: 20
    t.string   "senritu",     limit: 20
  end

  create_table "bougus", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "position",   limit: 255
    t.string   "rare",       limit: 255
    t.integer  "defence",    limit: 4
    t.string   "skill",      limit: 255
    t.string   "wazatama",   limit: 255
    t.string   "series",     limit: 255
    t.string   "arm_type",   limit: 255
    t.integer  "max_level",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "新規カラム名",     limit: 255
  end

  create_table "hakkens", force: :cascade do |t|
    t.string   "quest_number",  limit: 255
    t.string   "quest_name",    limit: 255
    t.string   "day_night",     limit: 255
    t.string   "name",          limit: 255
    t.string   "possibility",   limit: 255
    t.string   "kiseki_name",   limit: 255
    t.integer  "kiseki_number", limit: 4
    t.string   "island",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "quest_number2", limit: 20
    t.string   "hakken_number", limit: 20
  end

  create_table "monsters", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "comment",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "weak",       limit: 20
    t.string   "destroy",    limit: 20
  end

  create_table "notes", force: :cascade do |t|
    t.string "name",  limit: 255
    t.string "title", limit: 255
    t.string "body",  limit: 255
  end

end
