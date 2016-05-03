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

ActiveRecord::Schema.define(version: 20160502203919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "possible_answer"
    t.boolean  "is_correct"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "question_id"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "question_asked"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "quiz_id"
  end

  add_index "questions", ["quiz_id"], name: "index_questions_on_quiz_id", using: :btree

  create_table "quizzes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_answers", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "answer_id"
    t.integer  "question_id"
  end

  add_index "student_answers", ["answer_id"], name: "index_student_answers_on_answer_id", using: :btree
  add_index "student_answers", ["question_id"], name: "index_student_answers_on_question_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree

  add_foreign_key "answers", "questions"
  add_foreign_key "questions", "quizzes"
  add_foreign_key "student_answers", "answers"
  add_foreign_key "student_answers", "questions"
end
