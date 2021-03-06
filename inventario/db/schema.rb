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

ActiveRecord::Schema.define(version: 20150410185721) do

  create_table "articulos", force: true do |t|
    t.string   "nombre_articulo"
    t.integer  "marca_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articulos", ["marca_id"], name: "index_articulos_on_marca_id", using: :btree

  create_table "cajas", force: true do |t|
    t.decimal  "valor_transaccion",      precision: 10, scale: 0
    t.decimal  "ganancia",               precision: 10, scale: 0
    t.integer  "referencia_articulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cajas", ["referencia_articulo_id"], name: "index_cajas_on_referencia_articulo_id", using: :btree

  create_table "colors", force: true do |t|
    t.string   "color_referencia"
    t.integer  "referencia_articulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "colors", ["referencia_articulo_id"], name: "index_colors_on_referencia_articulo_id", using: :btree

  create_table "marcas", force: true do |t|
    t.string   "nombre_marca"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referencia_articulos", force: true do |t|
    t.string   "nombre_referencia"
    t.integer  "valor"
    t.integer  "articulo_id"
    t.integer  "caja_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "costo_referencia"
    t.integer  "cantidad"
  end

  add_index "referencia_articulos", ["articulo_id"], name: "index_referencia_articulos_on_articulo_id", using: :btree
  add_index "referencia_articulos", ["caja_id"], name: "index_referencia_articulos_on_caja_id", using: :btree

  create_table "tallas", force: true do |t|
    t.string   "talla_referencia"
    t.integer  "referencia_articulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tallas", ["referencia_articulo_id"], name: "index_tallas_on_referencia_articulo_id", using: :btree

  create_table "usuarios", force: true do |t|
    t.string   "nombre_usuario"
    t.string   "contrasena"
    t.string   "salt"
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
