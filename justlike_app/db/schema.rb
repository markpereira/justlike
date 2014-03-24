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

ActiveRecord::Schema.define(version: 20140322140448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuisines", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cuisines_recipes", id: false, force: true do |t|
    t.integer "cuisine_id"
    t.integer "recipe_id"
  end

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "measurement"
    t.string   "cost"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients_recipes", id: false, force: true do |t|
    t.integer "ingredient_id"
    t.integer "recipe_id"
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cooktime"
    t.integer  "servingsize"
    t.text     "instruction"
    t.text     "image"
    t.integer  "user_id"
    t.integer  "cuisine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes_users", id: false, force: true do |t|
    t.integer "recipe_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.string   "email"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end