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

ActiveRecord::Schema.define(version: 2018_04_29_024250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "artist_id"
    t.date "publish_at"
    t.integer "media_type"
    t.integer "release_type"
    t.integer "production_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_albums_on_artist_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "lyricist_id"
    t.bigint "composer_id"
    t.bigint "arranger_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["arranger_id"], name: "index_songs_on_arranger_id"
    t.index ["composer_id"], name: "index_songs_on_composer_id"
    t.index ["lyricist_id"], name: "index_songs_on_lyricist_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.integer "number"
    t.bigint "album_id"
    t.bigint "song_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_tracks_on_album_id"
    t.index ["song_id"], name: "index_tracks_on_song_id"
  end

end
