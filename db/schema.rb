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

ActiveRecord::Schema.define(version: 2020_01_20_184355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.datetime "date_time"
    t.integer "price"
    t.boolean "approved"
    t.bigint "user_id"
    t.bigint "venue_id"
    t.bigint "caterer_id"
    t.bigint "performer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caterer_id"], name: "index_bookings_on_caterer_id"
    t.index ["performer_id"], name: "index_bookings_on_performer_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
    t.index ["venue_id"], name: "index_bookings_on_venue_id"
  end

  create_table "caterers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "address"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_per_person"
    t.index ["user_id"], name: "index_caterers_on_user_id"
  end

  create_table "conversations", force: :cascade do |t|
  end

  create_table "favorited_venues", force: :cascade do |t|
    t.bigint "venue_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_favorited_venues_on_user_id"
    t.index ["venue_id"], name: "index_favorited_venues_on_venue_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "performers", force: :cascade do |t|
    t.string "name"
    t.integer "hourly_price"
    t.string "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_performers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.boolean "venue_admin", default: false
    t.boolean "caterer_admin", default: false
    t.boolean "performer_admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venue_amenities", force: :cascade do |t|
    t.bigint "venue_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_id"], name: "index_venue_amenities_on_venue_id"
  end

  create_table "venue_images", force: :cascade do |t|
    t.bigint "venue_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_id"], name: "index_venue_images_on_venue_id"
  end

  create_table "venue_reviews", force: :cascade do |t|
    t.bigint "venue_id"
    t.integer "rating"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_venue_reviews_on_user_id"
    t.index ["venue_id"], name: "index_venue_reviews_on_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "hourly_price"
    t.string "description"
    t.integer "capacity"
    t.boolean "approved"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_venues_on_user_id"
  end

  add_foreign_key "bookings", "caterers"
  add_foreign_key "bookings", "performers"
  add_foreign_key "bookings", "users"
  add_foreign_key "bookings", "venues"
  add_foreign_key "caterers", "users"
  add_foreign_key "favorited_venues", "users"
  add_foreign_key "favorited_venues", "venues"
  add_foreign_key "performers", "users"
  add_foreign_key "venue_amenities", "venues"
  add_foreign_key "venue_images", "venues"
  add_foreign_key "venue_reviews", "users"
  add_foreign_key "venue_reviews", "venues"
  add_foreign_key "venues", "users"
end
