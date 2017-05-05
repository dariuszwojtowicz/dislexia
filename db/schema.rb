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

ActiveRecord::Schema.define(version: 20170424111729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "level_id"
    t.string   "content"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "day_master", force: :cascade do |t|
    t.string "name"
    t.string "day"
  end

  create_table "levels", force: :cascade do |t|
    t.string   "name"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "month_master", force: :cascade do |t|
    t.string "name"
    t.string "day"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "content"
    t.string   "answer"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_tasks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.integer  "success"
    t.string   "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "login"
    t.integer  "year"
    t.integer  "level"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
  end

  create_table "words", force: :cascade do |t|
    t.string "words"
  end

end
