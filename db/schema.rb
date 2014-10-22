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

ActiveRecord::Schema.define(version: 20141022065827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bangcaps", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.integer  "nhombangcap_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bangcaps", ["nhombangcap_id"], name: "index_bangcaps_on_nhombangcap_id", using: :btree

  create_table "benhviens", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.string   "diachi"
    t.string   "dienthoai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chucdanhs", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.integer  "nhomchucdanh_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chucdanhs", ["nhomchucdanh_id"], name: "index_chucdanhs_on_nhomchucdanh_id", using: :btree

  create_table "dantocs", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "khoaphongs", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.integer  "nhomkhoaphong_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "khoaphongs", ["nhomkhoaphong_id"], name: "index_khoaphongs_on_nhomkhoaphong_id", using: :btree

  create_table "nganhangs", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.text     "thongtin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nhombangcaps", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.text     "diengiai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nhomchucdanhs", force: true do |t|
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

  add_index "phuongxas", ["quanhuyen_id"], name: "index_phuongxas_on_quanhuyen_id_id", using: :btree

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

  create_table "tongiaos", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vungdialies", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
