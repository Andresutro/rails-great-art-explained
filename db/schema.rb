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

ActiveRecord::Schema[7.0].define(version: 2023_07_13_035125) do
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
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "appreciations", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "art_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_appreciations_on_art_id"
    t.index ["user_id"], name: "index_appreciations_on_user_id"
  end

  create_table "arts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title"
    t.integer "year"
    t.text "description"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_arts_on_user_id"
  end

  create_table "donations", force: :cascade do |t|
    t.integer "amount"
    t.text "message"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_donations_on_user_id"
  end

  create_table "explanations", force: :cascade do |t|
    t.bigint "art_id", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_explanations_on_art_id"
  end

  create_table "like_appreciations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "appreciation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appreciation_id"], name: "index_like_appreciations_on_appreciation_id"
    t.index ["user_id", "appreciation_id"], name: "index_like_appreciations_on_user_id_and_appreciation_id", unique: true
    t.index ["user_id"], name: "index_like_appreciations_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "art_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_likes_on_art_id"
    t.index ["user_id", "art_id"], name: "index_likes_on_user_id_and_art_id", unique: true
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "participants", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tour_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tour_id"], name: "index_participants_on_tour_id"
    t.index ["user_id"], name: "index_participants_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "art_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_reviews_on_art_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "tours", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "capacity"
    t.integer "mode"
    t.string "address"
    t.text "description"
    t.string "title"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tours_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appreciations", "arts"
  add_foreign_key "appreciations", "users"
  add_foreign_key "arts", "users"
  add_foreign_key "donations", "users"
  add_foreign_key "explanations", "arts"
  add_foreign_key "like_appreciations", "appreciations"
  add_foreign_key "like_appreciations", "users"
  add_foreign_key "likes", "arts"
  add_foreign_key "likes", "users"
  add_foreign_key "participants", "tours"
  add_foreign_key "participants", "users"
  add_foreign_key "reviews", "arts"
  add_foreign_key "reviews", "users"
  add_foreign_key "tours", "users"
end
