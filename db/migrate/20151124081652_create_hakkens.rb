class CreateHakkens < ActiveRecord::Migration
  def change
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
      t.string   "comment",     limit: 25
      t.datetime "created_at",              null: false
      t.datetime "updated_at",              null: false
      t.string   "arm_type",    limit: 255
      t.string   "rare",        limit: 255
      t.string   "senritu",     limit: 255
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
      t.string   "hakken_number", limit: 255
      t.string   "quest_number2", limit: 255
      t.datetime "created_at",                null: false
      t.datetime "updated_at",                null: false
    end

    create_table "monsters", force: :cascade do |t|
      t.string   "name",       limit: 255
      t.integer  "zokusei",    limit: 4
      t.datetime "created_at",             null: false
      t.datetime "updated_at",             null: false
    end

    create_table "notes", force: :cascade do |t|
      t.string "name",  limit: 255
      t.string "title", limit: 255
      t.text   "body",  limit: 65535
    end

  end





end
