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

ActiveRecord::Schema.define(version: 20140209143850) do

  create_table "bets", force: true do |t|
    t.integer  "user_id"
    t.integer  "poll_id"
    t.integer  "game_id"
    t.integer  "home_bet"
    t.integer  "away_bet"
    t.boolean  "home_bet_pt"
    t.boolean  "away_bet_pt"
    t.integer  "total_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cups", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "logo"
  end

  create_table "games", force: true do |t|
    t.datetime "kickoff"
    t.integer  "home_score"
    t.integer  "away_score"
    t.integer  "home_score_et"
    t.integer  "away_score_et"
    t.integer  "home_win"
    t.integer  "away_win"
    t.integer  "round_id"
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "home_score_pt"
    t.boolean  "away_score_pt"
  end

  create_table "polls", force: true do |t|
    t.string   "name"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cup_id"
    t.string   "group_key"
  end

  create_table "polls_users", id: false, force: true do |t|
    t.integer "poll_id"
    t.integer "user_id"
  end

  add_index "polls_users", ["poll_id", "user_id"], name: "index_polls_users_on_poll_id_and_user_id", using: :btree

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "category"
    t.text     "content"
    t.integer  "user_id"
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
    t.string   "short_name"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "acronym"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "gender"
    t.string   "location"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.integer  "access_level"
  end

end
