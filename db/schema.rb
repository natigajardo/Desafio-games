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

ActiveRecord::Schema.define(version: 2020_09_27_160458) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "covers", force: :cascade do |t|
    t.integer "game02_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game02_id"], name: "index_covers_on_game02_id"
  end

  create_table "game01s", force: :cascade do |t|
    t.text "rule_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game02s", force: :cascade do |t|
    t.text "rule_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pieces", force: :cascade do |t|
    t.integer "game02_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game02_id"], name: "index_pieces_on_game02_id"
  end

  create_table "rules", force: :cascade do |t|
    t.integer "game02_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game02_id"], name: "index_rules_on_game02_id"
  end

end
