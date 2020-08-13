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

ActiveRecord::Schema.define(version: 2020_08_10_143751) do

  create_table "actnesses", force: :cascade do |t|
    t.integer "ball_type"
    t.boolean "swing"
    t.boolean "ball"
    t.boolean "strike"
    t.boolean "foul"
    t.integer "ball_strike"
    t.integer "situation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["situation_id"], name: "index_actnesses_on_situation_id"
  end

  create_table "games", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "runnings", force: :cascade do |t|
    t.integer "place"
    t.integer "base_id"
    t.integer "go_counts"
    t.string "reason"
    t.integer "situation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["situation_id"], name: "index_runnings_on_situation_id"
  end

  create_table "situations", force: :cascade do |t|
    t.integer "bat_counts"
    t.integer "inings"
    t.string "actness_results"
    t.integer "where_go"
    t.integer "ball_counts"
    t.integer "ball_strike"
    t.integer "rbi"
    t.integer "steal_counts"
    t.boolean "score"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_situations_on_game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_type", default: 1, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
