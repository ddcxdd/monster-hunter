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

ActiveRecord::Schema.define(version: 20151120085218) do

  create_table "arms", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "skill", limit: 255
    t.string "zokusei", limit: 255
    t.integer "rare", limit: 4
    t.integer "max_level", limit: 4
    t.string "series", limit: 255
    t.integer "attack", limit: 4
    t.integer "max_attack", limit: 4
    t.string "item", limit: 255
    t.integer "item_number", limit: 4
    t.float "hyouka", limit: 24
    t.string "comment", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "arm_type", limit: 255
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "fire", limit: 4
    t.integer "water", limit: 4
    t.integer "thunder", limit: 4
    t.integer "ice", limit: 4
    t.integer "soil", limit: 4
    t.string "comment", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "title", limit: 255
    t.string "body", limit: 255
  end

end
