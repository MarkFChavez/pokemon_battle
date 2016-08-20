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

ActiveRecord::Schema.define(version: 20160820114900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "battles", force: :cascade do |t|
    t.integer  "player_one_id"
    t.integer  "player_two_id"
    t.integer  "victor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "battles", ["player_one_id"], name: "index_battles_on_player_one_id", using: :btree
  add_index "battles", ["player_two_id"], name: "index_battles_on_player_two_id", using: :btree
  add_index "battles", ["victor_id"], name: "index_battles_on_victor_id", using: :btree

  create_table "pokemons", force: :cascade do |t|
    t.string   "name"
    t.integer  "pokemon_identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "types",              default: [], array: true
  end

end
