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

ActiveRecord::Schema.define(version: 20140225043307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: true do |t|
    t.string   "name"
    t.string   "beer_type"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.string   "amount"
    t.string   "unit"
    t.integer  "add_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "recipe_id"
  end

  add_index "ingredients", ["recipe_id"], name: "index_ingredients_on_recipe_id", using: :btree

  create_table "recipes", force: true do |t|
    t.string   "boil_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "beer_id"
    t.string   "name"
  end

  add_index "recipes", ["beer_id"], name: "index_recipes_on_beer_id", using: :btree

end
