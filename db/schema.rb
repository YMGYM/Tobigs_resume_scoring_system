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

ActiveRecord::Schema.define(version: 2021_07_01_054446) do

  create_table "resumes", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "univ"
    t.string "major"
    t.string "gender"
    t.string "military"
    t.string "entryYear"
    t.string "leftSem"
    t.string "birth"
    t.string "phone"
    t.string "email"
    t.string "python"
    t.text "skills"
    t.text "dataLecture"
    t.text "activity"
    t.text "question1"
    t.text "question2"
    t.text "question3"
    t.text "question4"
    t.text "question5"
    t.text "interviewTime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "isInterview"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "user_id"
    t.integer "resume_id"
    t.float "score1"
    t.float "score2"
    t.float "score3"
    t.float "score4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "isFriend"
    t.boolean "isInterview"
    t.index ["resume_id"], name: "index_scores_on_resume_id"
    t.index ["user_id"], name: "index_scores_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "standard"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
