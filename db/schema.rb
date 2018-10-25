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

ActiveRecord::Schema.define(version: 2018_10_24_043749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apply_surveys", force: :cascade do |t|
    t.integer "number_attemps"
    t.bigint "user_id"
    t.bigint "poll_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poll_id"], name: "index_apply_surveys_on_poll_id"
    t.index ["user_id"], name: "index_apply_surveys_on_user_id"
  end

  create_table "comments_forums", force: :cascade do |t|
    t.string "comment_forum"
    t.bigint "user_id"
    t.bigint "forum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forum_id"], name: "index_comments_forums_on_forum_id"
    t.index ["user_id"], name: "index_comments_forums_on_user_id"
  end

  create_table "contraceptive_methods", force: :cascade do |t|
    t.string "name_contraceptive"
    t.string "description_contraceptive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forums", force: :cascade do |t|
    t.string "title_forum"
    t.string "objective_forum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name_location"
    t.string "zone_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "methods_preventions", force: :cascade do |t|
    t.string "name_method"
    t.string "description_method"
    t.integer "duration_method"
    t.string "type_duration"
    t.string "recommendations_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string "name_neighborhood"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_neighborhoods_on_location_id"
  end

  create_table "options_questions", force: :cascade do |t|
    t.string "description_opction"
    t.bit "answer", limit: 1
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_options_questions_on_question_id"
  end

  create_table "poll_questions", id: false, force: :cascade do |t|
    t.bigint "poll_id"
    t.bigint "question_id"
    t.index ["poll_id"], name: "index_poll_questions_on_poll_id"
    t.index ["question_id"], name: "index_poll_questions_on_question_id"
  end

  create_table "polls", force: :cascade do |t|
    t.string "name_poll"
    t.integer "type_poll"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "concept_quiestion"
    t.integer "value_question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "qualify"
    t.string "observation_rating"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "result_risks", id: false, force: :cascade do |t|
    t.bigint "result_survey_id"
    t.bigint "risk_id"
    t.index ["result_survey_id"], name: "index_result_risks_on_result_survey_id"
    t.index ["risk_id"], name: "index_result_risks_on_risk_id"
  end

  create_table "result_surveys", force: :cascade do |t|
    t.bit "answer", limit: 1
    t.integer "poll_id"
    t.bigint "poll_id_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poll_id_id"], name: "index_result_surveys_on_poll_id_id"
    t.index ["question_id"], name: "index_result_surveys_on_question_id"
  end

  create_table "risk_methods", id: false, force: :cascade do |t|
    t.bigint "risk_id"
    t.bigint "method_prevention_id"
    t.index ["method_prevention_id"], name: "index_risk_methods_on_method_prevention_id"
    t.index ["risk_id"], name: "index_risk_methods_on_risk_id"
  end

  create_table "risks", force: :cascade do |t|
    t.string "name_risk"
    t.string "description_risk"
    t.string "recomendations_risks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.integer "phone"
    t.string "address"
    t.string "email"
    t.string "user_name"
    t.string "password_digest"
    t.bigint "neighborhood_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighborhood_id"], name: "index_users_on_neighborhood_id"
  end

  add_foreign_key "apply_surveys", "polls"
  add_foreign_key "apply_surveys", "users"
  add_foreign_key "comments_forums", "forums"
  add_foreign_key "comments_forums", "users"
  add_foreign_key "neighborhoods", "locations"
  add_foreign_key "options_questions", "questions"
  add_foreign_key "ratings", "users"
  add_foreign_key "result_surveys", "polls"
  add_foreign_key "result_surveys", "questions"
  add_foreign_key "users", "neighborhoods"
end
