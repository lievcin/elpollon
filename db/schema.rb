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

ActiveRecord::Schema.define(version: 20140107191020) do

  create_table "cups", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.datetime "kickoff"
    t.integer  "home_score"
    t.integer  "away_score"
    t.integer  "home_score_et"
    t.integer  "away_score_et"
    t.integer  "home_score_pt"
    t.integer  "away_score_pt"
    t.integer  "home_win"
    t.integer  "away_win"
    t.integer  "round_id"
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", force: true do |t|
    t.string   "name"
    t.integer  "leg"
    t.integer  "cup_id"
    t.text     "description"
    t.string   "round_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "country"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
