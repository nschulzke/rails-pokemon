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

ActiveRecord::Schema.define(version: 20170629223756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "base_pokemons", force: :cascade do |t|
    t.string   "name"
    t.integer  "health"
    t.integer  "power"
    t.integer  "element"
    t.string   "background"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "base_pokemons_moves", id: false, force: :cascade do |t|
    t.integer "base_pokemon_id"
    t.integer "move_id"
    t.index ["base_pokemon_id"], name: "index_base_pokemons_moves_on_base_pokemon_id", using: :btree
    t.index ["move_id"], name: "index_base_pokemons_moves_on_move_id", using: :btree
  end

  create_table "moves", force: :cascade do |t|
    t.string   "name"
    t.integer  "element"
    t.integer  "damage"
    t.integer  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "gender"
    t.integer  "x_pos"
    t.integer  "y_pos"
    t.string   "background"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string   "nickname"
    t.integer  "player_id"
    t.integer  "base_pokemon_id"
    t.integer  "status"
    t.integer  "health"
    t.integer  "power"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["base_pokemon_id"], name: "index_pokemons_on_base_pokemon_id", using: :btree
    t.index ["player_id"], name: "index_pokemons_on_player_id", using: :btree
  end

  add_foreign_key "base_pokemons_moves", "base_pokemons"
  add_foreign_key "base_pokemons_moves", "moves"
  add_foreign_key "pokemons", "base_pokemons"
  add_foreign_key "pokemons", "players"
end
