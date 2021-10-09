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

ActiveRecord::Schema.define(version: 2021_10_08_160518) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "category_videos", force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "video_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_category_videos_on_category_id"
    t.index ["video_id"], name: "index_category_videos_on_video_id"
  end

  create_table "friendships", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "friend_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["user_id"], name: "index_friendships_on_user_id"
  end

  create_table "pornstar_videos", force: :cascade do |t|
    t.integer "pornstar_id", null: false
    t.integer "video_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pornstar_id"], name: "index_pornstar_videos_on_pornstar_id"
    t.index ["video_id"], name: "index_pornstar_videos_on_video_id"
  end

  create_table "pornstars", force: :cascade do |t|
    t.string "name"
    t.date "dob"
    t.string "from"
    t.string "years"
    t.string "ethnicity"
    t.string "nationality"
    t.string "measurements"
    t.string "brasize"
    t.integer "height"
    t.integer "weight"
    t.string "bodytype"
    t.string "eyecolor"
    t.string "hair"
    t.string "show"
    t.boolean "solo"
    t.boolean "lesbian"
    t.string "sex"
    t.boolean "hetero"
    t.text "special"
    t.text "story"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "alias"
    t.string "links"
  end

  create_table "stocks", force: :cascade do |t|
    t.string "ticker"
    t.string "name"
    t.decimal "last_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "logo"
  end

  create_table "tag_videos", force: :cascade do |t|
    t.integer "tag_id", null: false
    t.integer "video_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tag_id"], name: "index_tag_videos_on_tag_id"
    t.index ["video_id"], name: "index_tag_videos_on_video_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_stocks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "stock_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stock_id"], name: "index_user_stocks_on_stock_id"
    t.index ["user_id"], name: "index_user_stocks_on_user_id"
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
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "site"
    t.text "embed"
    t.text "pornstars"
    t.text "category"
    t.integer "duration"
    t.integer "views"
    t.integer "likes"
    t.integer "dislikes"
    t.text "bigthumb"
    t.text "bigthumbs"
    t.text "weblink"
    t.text "title"
    t.string "thumb"
    t.text "tags"
    t.string "video_id"
    t.text "thumbs"
    t.text "preview"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["site", "video_id"], name: "index_videos_on_site_and_video_id", unique: true
    t.index ["site"], name: "index_videos_on_site"
    t.index ["video_id"], name: "index_videos_on_video_id"
  end

  add_foreign_key "category_videos", "categories"
  add_foreign_key "category_videos", "videos"
  add_foreign_key "friendships", "users"
  add_foreign_key "friendships", "users", column: "friend_id"
  add_foreign_key "pornstar_videos", "pornstars"
  add_foreign_key "pornstar_videos", "videos"
  add_foreign_key "tag_videos", "tags"
  add_foreign_key "tag_videos", "videos"
  add_foreign_key "user_stocks", "stocks"
  add_foreign_key "user_stocks", "users"
end
