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

ActiveRecord::Schema.define(version: 20160531220027) do

  create_table "children", force: :cascade do |t|
    t.string   "user_id"
    t.string   "gender"
    t.date     "dob"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: :cascade do |t|
    t.date     "date"
    t.string   "child_id"
    t.integer  "fat"
    t.integer  "dairy"
    t.integer  "protein"
    t.integer  "vegetable"
    t.integer  "fruit"
    t.integer  "grain"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sleeps", force: :cascade do |t|
    t.date     "child_id"
    t.date     "date"
    t.integer  "naps"
    t.integer  "wake_ups"
    t.float    "day_sleep"
    t.float    "night_sleep"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "symptoms", force: :cascade do |t|
    t.date     "date"
    t.boolean  "none"
    t.string   "child_id"
    t.string   "other"
    t.boolean  "diahrrea"
    t.boolean  "fever"
    t.boolean  "cough"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "user_id"
    t.integer  "phone_number"
    t.string   "password_2"
    t.string   "password_1"
    t.string   "email_address"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "words", force: :cascade do |t|
    t.string   "child_id"
    t.string   "proficiency"
    t.string   "method"
    t.string   "word_name"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total"
  end

end
