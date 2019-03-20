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

ActiveRecord::Schema.define(version: 2019_03_19_061511) do

  create_table "configurations", force: :cascade do |t|
    t.string "script_dir"
    t.string "memory_limit"
    t.string "benchmark_dir"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_results", force: :cascade do |t|
    t.string "date"
    t.integer "sat"
    t.integer "unsat"
    t.integer "timeout"
    t.integer "misc"
    t.string "commit"
    t.integer "tool_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.integer "test_cycle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "command"
    t.string "lastest_commit"
    t.date "lastest_date"
    t.integer "days_to_run"
    t.string "repo_url"
    t.string "branch_name"
    t.boolean "build_everytime"
  end

end