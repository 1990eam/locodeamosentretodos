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


ActiveRecord::Schema.define(version: 2020_08_13_232632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "application_requests", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "user_id", null: false
    t.string "status", default: "pending"
    t.text "about_me"
    t.string "owner_status", default: "pending"
    t.index ["role_id"], name: "index_application_requests_on_role_id"
    t.index ["user_id"], name: "index_application_requests_on_user_id"
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
    t.text "link"
    t.boolean "sponsored", default: false
    t.string "link_1"
    t.string "link_2"
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
    t.string "description"
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
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "application_requests", "roles"
  add_foreign_key "application_requests", "users"
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
