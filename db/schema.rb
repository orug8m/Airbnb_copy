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

ActiveRecord::Schema.define(version: 20171024044515) do

  create_table "hosts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "last_name",                     null: false
    t.string   "first_name",                    null: false
    t.string   "gender",                        null: false
    t.string   "birth_month",                   null: false
    t.integer  "birth_day",                     null: false
    t.integer  "birth_year",                    null: false
    t.string   "email",                         null: false
    t.string   "tel",                           null: false
    t.string   "currency",                      null: false
    t.string   "city_country",                  null: false
    t.text     "description",     limit: 65535, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "native_language",               null: false
    t.string   "user_id",                       null: false
  end

  create_table "room_books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",                    null: false
    t.integer  "room_id",                    null: false
    t.datetime "start_date",                 null: false
    t.datetime "end_date",                   null: false
    t.integer  "total_guests",               null: false
    t.text     "requests",     limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["room_id"], name: "index_room_books_on_room_id", using: :btree
    t.index ["user_id"], name: "index_room_books_on_user_id", using: :btree
  end

  create_table "room_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.integer  "room_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image",      null: false
    t.index ["room_id"], name: "index_room_images_on_room_id", using: :btree
  end

  create_table "room_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "room_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_room_tags_on_room_id", using: :btree
    t.index ["tag_id"], name: "index_room_tags_on_tag_id", using: :btree
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",                          null: false
    t.integer  "price",                          null: false
    t.integer  "cleaning_cost",                  null: false
    t.integer  "vat_jst",                        null: false
    t.string   "location",                       null: false
    t.text     "description",      limit: 65535, null: false
    t.integer  "hm_rooms",                       null: false
    t.integer  "hm_bets",                        null: false
    t.integer  "hm_bathrooms",                   null: false
    t.string   "amenity"
    t.string   "facility"
    t.string   "rules"
    t.string   "meal_time_of_day"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "roomtype",                       null: false
    t.integer  "host_id",                        null: false
    t.string   "country"
    t.string   "landmark"
    t.integer  "rate"
    t.index ["title"], name: "index_rooms_on_title", using: :btree
  end

  create_table "shares", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "keytag",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                                default: "", null: false
    t.string   "encrypted_password",                   default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "first_name",                                        null: false
    t.string   "last_name",                                         null: false
    t.string   "gender"
    t.string   "birth_month"
    t.integer  "birth_day"
    t.integer  "birth_year"
    t.string   "tel"
    t.string   "currency"
    t.string   "city_country"
    t.text     "discription",            limit: 65535
    t.text     "user_image_url",         limit: 65535
    t.string   "native_language"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "room_books", "rooms"
  add_foreign_key "room_books", "users"
  add_foreign_key "room_images", "rooms"
end
