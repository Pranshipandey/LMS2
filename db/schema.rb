# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_01_090115) do
  create_table "admins", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "users_id"
  end

  create_table "book_request", force: :cascade do |t|
    t.date "date"
    t.boolean "is_special"
    t.boolean "is_approved"
    t.string "books_id"
    t.integer "librarians_id"
    t.string "students_id"
  end

  create_table "book_requests", force: :cascade do |t|
    t.date "date"
    t.boolean "is_special"
    t.boolean "is_approved"
    t.string "books_id"
    t.integer "librarians_id"
    t.string "students_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "hold"
  end

  create_table "books", force: :cascade do |t|
    t.string "isbn"
    t.string "title"
    t.string "author"
    t.string "language"
    t.date "published"
    t.string "edition"
    t.string "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "book_count"
    t.boolean "is_issued"
    t.integer "number_hold_req"
  end

  create_table "librarians", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password"
    t.string "library"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "users_id"
    t.string "libraries_id"
    t.boolean "approved"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "name"
    t.string "university"
    t.string "location"
    t.integer "max_days"
    t.float "fines"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "books_id"
    t.string "users_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password"
    t.string "education"
    t.string "university"
    t.integer "max_books"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "users_id"
  end

  create_table "table_librarians", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password"
    t.string "library"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "users_id"
    t.string "libraries_id"
    t.boolean "approved"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "university"
    t.integer "role"
    t.string "libraries_id"
    t.string "students_id"
  end

end
