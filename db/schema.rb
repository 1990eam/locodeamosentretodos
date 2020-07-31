# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_30_232526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "user_id", null: false
    t.string "status"
    t.index ["role_id"], name: "index_applications_on_role_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "collaborators", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "user_id", null: false
    t.string "status"
    t.index ["role_id"], name: "index_collaborators_on_role_id"
    t.index ["user_id"], name: "index_collaborators_on_user_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "requirements", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "technology_id", null: false
    t.bigint "level_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["level_id"], name: "index_requirements_on_level_id"
    t.index ["role_id"], name: "index_requirements_on_role_id"
    t.index ["technology_id"], name: "index_requirements_on_technology_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.bigint "project_id", null: false
    t.index ["project_id"], name: "index_roles_on_project_id"
  end

  create_table "skills", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "technology_id", null: false
    t.bigint "level_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["level_id"], name: "index_skills_on_level_id"
    t.index ["technology_id"], name: "index_skills_on_technology_id"
    t.index ["user_id"], name: "index_skills_on_user_id"
  end

  create_table "technologies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applications", "roles"
  add_foreign_key "applications", "users"
  add_foreign_key "collaborators", "roles"
  add_foreign_key "collaborators", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "requirements", "levels"
  add_foreign_key "requirements", "roles"
  add_foreign_key "requirements", "technologies"
  add_foreign_key "roles", "projects"
  add_foreign_key "skills", "levels"
  add_foreign_key "skills", "technologies"
  add_foreign_key "skills", "users"
end
