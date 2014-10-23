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

ActiveRecord::Schema.define(version: 20141023022014) do

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

  create_table "chucvus", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.integer  "nhomchucvu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chucvus", ["nhomchucvu_id"], name: "index_chucvus_on_nhomchucvu_id", using: :btree

  create_table "dantocs", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gioitinhs", force: true do |t|
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hedaotaos", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.text     "diengiai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hochams", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.text     "diengiai"
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

  create_table "lyluanchinhtris", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nganhangs", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.text     "thongtin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nganhdaotaos", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.integer  "nhombangcap_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nganhdaotaos", ["nhombangcap_id"], name: "index_nganhdaotaos_on_nhombangcap_id", using: :btree

  create_table "nhanviens", force: true do |t|
    t.string   "eid",                                   null: false
    t.string   "holot",                     limit: 50,  null: false
    t.string   "ten",                       limit: 25,  null: false
    t.string   "tenkhac",                   limit: 50
    t.datetime "ngaysinh"
    t.integer  "namsinh"
    t.integer  "gioitinh"
    t.integer  "quoctich"
    t.integer  "dantoc"
    t.integer  "tongiao"
    t.string   "email",                     limit: 100
    t.string   "didong",                    limit: 20
    t.string   "dienthoai",                 limit: 20
    t.integer  "tinhtranghonnhan"
    t.integer  "noisinh_xa"
    t.integer  "noisinh_huyen"
    t.integer  "noisinh_tinh"
    t.integer  "nguyenquan_xa"
    t.integer  "nguyenquan_huyen"
    t.integer  "nguyenquan_tinh"
    t.string   "tamtru_duong"
    t.integer  "tamtru_xa"
    t.integer  "tamtru_huyen"
    t.integer  "tamtru_tinh"
    t.string   "thuongtru_duong"
    t.integer  "thuongtru_xa"
    t.integer  "thuongtru_huyen"
    t.integer  "thuongtru_tinh"
    t.integer  "chucdanh"
    t.integer  "trinhdophothong"
    t.integer  "nganhdaotao"
    t.integer  "hedaotao"
    t.integer  "noidaotao"
    t.integer  "hocham"
    t.integer  "lyluanchinhtri"
    t.integer  "quanlynhanuoc"
    t.integer  "namtotnghiepquanlynhanuoc"
    t.string   "socmnd",                    limit: 20
    t.integer  "noicapcmnd"
    t.datetime "ngaycapcmnd"
    t.string   "masothue",                  limit: 50
    t.string   "taikhoannganhang",          limit: 50
    t.integer  "nganhang"
    t.integer  "ngoaingu"
    t.integer  "trinhdongoaingu"
    t.integer  "trinhdotinhoc"
    t.integer  "tiengdantoc"
    t.integer  "trinhdotiengdantoc"
    t.integer  "tinhtrangsuckhoe"
    t.decimal  "chieucao"
    t.decimal  "cannang"
    t.string   "doanvien"
    t.datetime "ngayvaodoan"
    t.string   "sothedoan"
    t.string   "noicapthedoan"
    t.string   "dangvien"
    t.datetime "ngaydubidang"
    t.datetime "ngaychinhthucdang"
    t.string   "sothedang"
    t.string   "noicapthedang"
    t.string   "bodoi"
    t.string   "songhiavuquansu"
    t.datetime "ngaynhapngu"
    t.datetime "ngayxuatngu"
    t.string   "quanham"
    t.string   "sosolaodong"
    t.datetime "ngaycapsolaodong"
    t.string   "noicapsolaodong"
    t.integer  "trangthai"
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

  create_table "nhomchucvus", force: true do |t|
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

  create_table "nhomnganhdaotaos", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.text     "diengiai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "noidaotaos", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.text     "thongtintruong"
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

  create_table "quanlynhanuocs", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "tinhtranghonnhans", force: true do |t|
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tongiaos", force: true do |t|
    t.string   "ma"
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trinhdophothongs", force: true do |t|
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
