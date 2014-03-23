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

ActiveRecord::Schema.define(version: 20140323025613) do

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
    t.boolean  "is_taken"
  end

  create_table "boletos", force: true do |t|
    t.date     "fecha"
    t.decimal  "descuento",         precision: 10, scale: 0
    t.decimal  "subtotal",          precision: 10, scale: 0
    t.decimal  "total",             precision: 10, scale: 0
    t.integer  "precio_boletos_id"
    t.integer  "terminal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre"
    t.string   "identidad"
  end

  add_index "boletos", ["precio_boletos_id"], name: "index_boletos_on_precio_boletos_id", using: :btree
  add_index "boletos", ["terminal_id"], name: "index_boletos_on_terminal_id", using: :btree

  create_table "destinos", force: true do |t|
    t.string   "nombre"
    t.string   "cod"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empleados", force: true do |t|
    t.string   "identidad"
    t.string   "nombre"
    t.text     "direccion"
    t.string   "telefono"
    t.date     "fecha_nacimiento"
    t.string   "puesto"
    t.boolean  "is_active"
    t.boolean  "tiene_bus"
    t.integer  "terminal_id"
    t.integer  "autobus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "empleados", ["autobus_id"], name: "index_empleados_on_autobus_id", using: :btree
  add_index "empleados", ["terminal_id"], name: "index_empleados_on_terminal_id", using: :btree

  create_table "encomiendas", force: true do |t|
    t.string   "destinatario"
    t.string   "remitente"
    t.decimal  "peso",              precision: 10, scale: 0
    t.string   "destino"
    t.string   "origen"
    t.boolean  "is_delivered"
    t.boolean  "is_shipped"
    t.boolean  "is_onhold"
    t.date     "fecha"
    t.integer  "terminal_id"
    t.integer  "precio_paquete_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "encomiendas", ["precio_paquete_id"], name: "index_encomiendas_on_precio_paquete_id", using: :btree
  add_index "encomiendas", ["terminal_id"], name: "index_encomiendas_on_terminal_id", using: :btree

  create_table "itinerarios", force: true do |t|
    t.time     "hora_salida"
    t.string   "destino"
    t.string   "origen"
    t.date     "fecha"
    t.integer  "terminal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itinerarios", ["terminal_id"], name: "index_itinerarios_on_terminal_id", using: :btree

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

  create_table "precio_boletos", force: true do |t|
    t.decimal  "precio",     precision: 10, scale: 0
    t.string   "clase"
    t.string   "destino"
    t.string   "origen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "precio_paquetes", force: true do |t|
    t.string   "tipo_paquete"
    t.decimal  "precio",       precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terminals", force: true do |t|
    t.string   "codigo"
    t.string   "telefono"
    t.string   "direccion"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
