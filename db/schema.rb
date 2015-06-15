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

ActiveRecord::Schema.define(version: 20150615172835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dummies", force: :cascade do |t|
  end

  create_table "dummy_transitions", force: :cascade do |t|
    t.string   "to_state",    null: false
    t.json     "metadata"
    t.integer  "sort_key",    null: false
    t.integer  "dummy_id",    null: false
    t.boolean  "most_recent", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dummy_transitions", ["dummy_id", "most_recent"], name: "index_dummy_transitions_parent_most_recent", unique: true, where: "most_recent", using: :btree
  add_index "dummy_transitions", ["dummy_id", "sort_key"], name: "index_dummy_transitions_parent_sort", unique: true, using: :btree

end
