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

ActiveRecord::Schema.define(version: 2021_06_22_010947) do

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "meal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meal_menus", force: :cascade do |t|
    t.integer "meal_id", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_meal_menus_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.integer "user_id", null: false
    t.date "date", null: false
    t.string "menu_image_id", null: false
    t.integer "category", default: 0, null: false
    t.text "menu_detail", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "meal_id", null: false
    t.text "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.string "nick_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_image_id"
    t.float "height"
    t.float "target_weight"
    t.text "introduction"
    t.integer "sex"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weights", force: :cascade do |t|
    t.integer "user_id", null: false
    t.float "weight", null: false
    t.float "body_fat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date", null: false
  end

end
