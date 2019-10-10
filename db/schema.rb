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

ActiveRecord::Schema.define(version: 2019_10_10_061614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: :cascade do |t|
    t.bigint "podcast_id", null: false
    t.string "audio_url"
    t.string "description"
    t.string "episode_id"
    t.bigint "published_date"
    t.integer "audio_length"
    t.string "title"
    t.string "listennotes_podcast_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["podcast_id"], name: "index_episodes_on_podcast_id"
  end

  create_table "podcasts", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "podcast_id"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "podcast_id", null: false
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["podcast_id"], name: "index_reviews_on_podcast_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "savedepisodes", force: :cascade do |t|
    t.bigint "episode_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["episode_id"], name: "index_savedepisodes_on_episode_id"
    t.index ["user_id"], name: "index_savedepisodes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "episodes", "podcasts"
  add_foreign_key "reviews", "podcasts"
  add_foreign_key "reviews", "users"
  add_foreign_key "savedepisodes", "episodes"
  add_foreign_key "savedepisodes", "users"
end
