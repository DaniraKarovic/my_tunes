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

ActiveRecord::Schema.define(version: 20170817162636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "year"
    t.integer  "artist_id"
    t.integer  "user_id"
    t.index ["artist_id"], name: "index_albums_on_artist_id", using: :btree
    t.index ["user_id"], name: "index_albums_on_user_id", using: :btree
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_artists_on_user_id", using: :btree
  end

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "song_id"
    t.index ["song_id"], name: "index_favorites_on_song_id", using: :btree
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_genres_on_user_id", using: :btree
  end

  create_table "playlist_songs", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "playlist_id"
    t.integer  "song_id"
    t.index ["playlist_id"], name: "index_playlist_songs_on_playlist_id", using: :btree
    t.index ["song_id"], name: "index_playlist_songs_on_song_id", using: :btree
  end

  create_table "playlists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "name"
    t.index ["user_id"], name: "index_playlists_on_user_id", using: :btree
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.string   "duration"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "album_id"
    t.integer  "user_id"
    t.integer  "genre_id"
    t.string   "youtubelink"
    t.index ["album_id"], name: "index_songs_on_album_id", using: :btree
    t.index ["genre_id"], name: "index_songs_on_genre_id", using: :btree
    t.index ["user_id"], name: "index_songs_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role",                   default: 0
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "albums", "artists"
  add_foreign_key "albums", "users"
  add_foreign_key "artists", "users"
  add_foreign_key "favorites", "songs"
  add_foreign_key "favorites", "users"
  add_foreign_key "genres", "users"
  add_foreign_key "playlist_songs", "playlists"
  add_foreign_key "playlist_songs", "songs"
  add_foreign_key "playlists", "users"
  add_foreign_key "songs", "albums"
  add_foreign_key "songs", "genres"
  add_foreign_key "songs", "users"
end
