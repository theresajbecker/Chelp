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

ActiveRecord::Schema.define(version: 20140502195642) do

  create_table "charities", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "filter_flags"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "geographic_region"
    t.string   "area_of_impact"
    t.string   "religious_affiliation"
    t.string   "how_to_donate"
    t.string   "charity_image"
    t.string   "charity_homepage"
    t.integer  "percent_of_overhead"
  end

  create_table "messages", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.integer  "user_id"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reports", ["user_id"], name: "index_reports_on_user_id"

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "charity_id"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["charity_id"], name: "index_reviews_on_charity_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: true do |t|
    t.string   "oauth_provider"
    t.string   "oauth_uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "picture"
    t.string   "email"
    t.string   "password"
    t.string   "permissions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
