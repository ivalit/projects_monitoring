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

ActiveRecord::Schema.define(version: 20150427192248) do

  create_table "comments", force: :cascade do |t|
    t.text     "body",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.integer  "project_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "comments", ["project_id"], name: "index_comments_on_project_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "criteria", force: :cascade do |t|
    t.string "criterion", limit: 255
  end

  create_table "development_progresses", force: :cascade do |t|
    t.integer  "progress",   limit: 4
    t.integer  "project_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "development_progresses", ["project_id"], name: "index_development_progresses_on_project_id", using: :btree

  create_table "marks", force: :cascade do |t|
    t.integer  "mark",         limit: 4
    t.integer  "project_id",   limit: 4
    t.integer  "criterion_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "marks", ["criterion_id"], name: "index_marks_on_criterion_id", using: :btree
  add_index "marks", ["project_id"], name: "index_marks_on_project_id", using: :btree

  create_table "origins", force: :cascade do |t|
    t.string   "source",     limit: 255
    t.string   "curator",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.text     "description",     limit: 65535
    t.integer  "origin_id",       limit: 4
    t.integer  "type_of_work_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["origin_id"], name: "index_projects_on_origin_id", using: :btree
  add_index "projects", ["type_of_work_id"], name: "index_projects_on_type_of_work_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string "role", limit: 255
  end

  create_table "teams", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_of_works", force: :cascade do |t|
    t.string "task_type", limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "name",       limit: 255
    t.string   "nickname",   limit: 255
    t.integer  "role_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

end
