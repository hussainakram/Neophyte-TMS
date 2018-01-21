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

ActiveRecord::Schema.define(version: 20180119185010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "content", default: ""
    t.boolean "correct"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "bugs", force: :cascade do |t|
    t.string "title"
    t.text "description", default: ""
    t.string "status", default: ""
    t.bigint "challenge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_bugs_on_challenge_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "name"
    t.text "description", default: ""
    t.string "duration", default: "--:--"
    t.integer "points", default: 0
    t.string "category", default: ""
    t.string "level", default: ""
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "resource_id"
    t.index ["project_id"], name: "index_challenges_on_project_id"
    t.index ["resource_id"], name: "index_challenges_on_resource_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.text "description", default: ""
    t.string "location", default: ""
    t.string "contact_no", default: ""
    t.string "email", default: ""
    t.string "ceo", default: ""
    t.string "category", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_users_on_company_id"
    t.index ["user_id"], name: "index_company_users_on_user_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.text "description", default: ""
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_departments_on_company_id"
  end

  create_table "documents", force: :cascade do |t|
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "document_file_name"
    t.string "document_content_type"
    t.integer "document_file_size"
    t.datetime "document_updated_at"
    t.index ["resource_id"], name: "index_documents_on_resource_id"
  end

  create_table "images", force: :cascade do |t|
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["resource_id"], name: "index_images_on_resource_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "link"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_links_on_resource_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description", default: ""
    t.string "category", default: ""
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_projects_on_department_id"
  end

  create_table "question_attempts", force: :cascade do |t|
    t.integer "answer_id"
    t.boolean "correct"
    t.bigint "quiz_attempt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_id"
    t.index ["question_id"], name: "index_question_attempts_on_question_id"
    t.index ["quiz_attempt_id"], name: "index_question_attempts_on_quiz_attempt_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "statement"
    t.bigint "quiz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
  end

  create_table "quiz_attempts", force: :cascade do |t|
    t.integer "earned_marks"
    t.string "status"
    t.integer "attempted_questions"
    t.integer "correct_answers"
    t.string "time_taken", default: "--:--"
    t.bigint "user_id"
    t.bigint "quiz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_quiz_attempts_on_quiz_id"
    t.index ["user_id"], name: "index_quiz_attempts_on_user_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "name"
    t.string "time_allowed", default: "--:--"
    t.integer "no_of_questions", default: 0
    t.integer "pass_score", default: 0
    t.bigint "project_id"
    t.bigint "quiz_attempt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "challenge_id"
    t.index ["challenge_id"], name: "index_quizzes_on_challenge_id"
    t.index ["quiz_attempt_id"], name: "index_quizzes_on_quiz_attempt_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "challenge_id"
    t.index ["challenge_id"], name: "index_resources_on_challenge_id"
  end

  create_table "solutions", force: :cascade do |t|
    t.text "description", default: ""
    t.string "link", default: ""
    t.bigint "bug_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bug_id"], name: "index_solutions_on_bug_id"
  end

  create_table "user_challenges", force: :cascade do |t|
    t.string "status", default: ""
    t.bigint "user_id"
    t.bigint "challenge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_user_challenges_on_challenge_id"
    t.index ["user_id"], name: "index_user_challenges_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "role"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.bigint "invited_by_id"
    t.integer "invitations_count", default: 0
    t.integer "points", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "question_attempts", "questions"
  add_foreign_key "question_attempts", "quiz_attempts"
  add_foreign_key "user_challenges", "challenges"
  add_foreign_key "user_challenges", "users"
end
