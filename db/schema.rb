# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141021095155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nhombangcaps", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.text     "diengiai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nhomkhoaphongs", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phuongxas", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.integer  "quanhuyen_id"
    t.string   "viettat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phuongxas", ["quanhuyen_id_id"], name: "index_phuongxas_on_quanhuyen_id_id", using: :btree

  create_table "quanhuyens", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.integer  "tinhthanhpho_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quanhuyens", ["tinhthanhpho_id"], name: "index_quanhuyens_on_tinhthanhpho_id", using: :btree

  create_table "quoctiches", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tinhthanhphos", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.integer  "vungdialy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tinhthanhphos", ["vungdialy_id"], name: "index_tinhthanhphos_on_vungdialy_id", using: :btree

  create_table "vungdialies", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
