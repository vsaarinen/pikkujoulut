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

ActiveRecord::Schema.define(version: 20151126180902) do

  create_table "puzzles", force: :cascade do |t|
    t.string   "image"
    t.text     "description"
    t.integer  "next_puzzle_id"
    t.integer  "final_puzzle_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "answer"
  end

  add_index "puzzles", ["next_puzzle_id"], name: "index_puzzles_on_next_puzzle_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "start_puzzle_id"
    t.integer  "current_puzzle_id"
  end

end
