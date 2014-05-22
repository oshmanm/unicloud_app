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

ActiveRecord::Schema.define(version: 20140522082120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: true do |t|
    t.string  "name"
    t.integer "avail_rooms"
    t.integer "university_id"
  end

  add_index "buildings", ["university_id"], name: "index_buildings_on_university_id", using: :btree

  create_table "catalogs", force: true do |t|
    t.integer "courses_count"
    t.integer "university_id"
  end

  add_index "catalogs", ["university_id"], name: "index_catalogs_on_university_id", using: :btree

  create_table "classrooms", force: true do |t|
    t.string  "room_num"
    t.integer "current_occupancy"
    t.integer "max_occupancy"
    t.integer "building_id"
  end

  add_index "classrooms", ["building_id"], name: "index_classrooms_on_building_id", using: :btree

  create_table "courses", force: true do |t|
    t.string  "title"
    t.text    "schedule"
    t.integer "course_level"
    t.integer "catalog_id"
  end

  add_index "courses", ["catalog_id"], name: "index_courses_on_catalog_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "is_admin"
    t.text     "courses_registered"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "university_id"
  end

  add_index "students", ["university_id"], name: "index_students_on_university_id", using: :btree

  create_table "universitys", force: true do |t|
    t.string "name"
  end

end
