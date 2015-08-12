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

ActiveRecord::Schema.define(version: 20150812205040) do

  create_table "colleges", force: :cascade do |t|
    t.integer  "year_id"
    t.string   "acronym"
    t.string   "name"
    t.string   "org_code"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "colleges", ["year_id"], name: "index_colleges_on_year_id"

  create_table "course_term_items", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "term_item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "course_term_items", ["course_id"], name: "index_course_term_items_on_course_id"
  add_index "course_term_items", ["term_item_id"], name: "index_course_term_items_on_term_item_id"

  create_table "courses", force: :cascade do |t|
    t.integer  "department_id"
    t.string   "name"
    t.string   "description"
    t.string   "prerequisites"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "courses", ["department_id"], name: "index_courses_on_department_id"

  create_table "degree_plans", force: :cascade do |t|
    t.integer  "department_id"
    t.string   "name"
    t.string   "kind"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "degree_plans", ["department_id"], name: "index_degree_plans_on_department_id"

  create_table "departments", force: :cascade do |t|
    t.integer  "college_id"
    t.string   "acronym"
    t.string   "name"
    t.string   "org_code"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "departments", ["college_id"], name: "index_departments_on_college_id"

  create_table "term_item_terms", force: :cascade do |t|
    t.integer  "term_id"
    t.integer  "term_item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "term_item_terms", ["term_id"], name: "index_term_item_terms_on_term_id"
  add_index "term_item_terms", ["term_item_id"], name: "index_term_item_terms_on_term_item_id"

  create_table "term_items", force: :cascade do |t|
    t.integer  "term_id"
    t.string   "description"
    t.string   "hours"
    t.string   "minimum_grade"
    t.string   "notes"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "term_items", ["term_id"], name: "index_term_items_on_term_id"

  create_table "terms", force: :cascade do |t|
    t.integer  "degree_plan_id"
    t.integer  "number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "terms", ["degree_plan_id"], name: "index_terms_on_degree_plan_id"

  create_table "users", force: :cascade do |t|
    t.integer  "department_id"
    t.string   "netid"
    t.boolean  "admin"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "users", ["department_id"], name: "index_users_on_department_id"

  create_table "years", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
