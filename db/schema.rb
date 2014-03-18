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

ActiveRecord::Schema.define(version: 20140318043930) do

  create_table "asientos", force: true do |t|
    t.string   "asiento_no"
    t.string   "tipo"
    t.boolean  "is_active"
    t.integer  "autobus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "asientos", ["autobus_id"], name: "index_asientos_on_autobus_id", using: :btree

  create_table "autobuses", force: true do |t|
    t.string   "codigo"
    t.string   "marca"
    t.string   "modelo"
    t.integer  "capacidad"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mantenimientos", force: true do |t|
    t.date     "fecha"
    t.text     "observacion"
    t.string   "kilometraje"
    t.decimal  "precio",      precision: 10, scale: 0
    t.integer  "autobus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mantenimientos", ["autobus_id"], name: "index_mantenimientos_on_autobus_id", using: :btree

end
