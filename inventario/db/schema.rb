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

ActiveRecord::Schema.define(version: 20150406173602) do

  create_table "articulos", force: true do |t|
    t.string   "nombre_articulo"
    t.integer  "marca_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articulos", ["marca_id"], name: "index_articulos_on_marca_id", using: :btree

  create_table "marcas", force: true do |t|
    t.string   "nombre_marca"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referencia_articulos", force: true do |t|
    t.string   "nombre_referencia"
    t.integer  "cantidad"
    t.integer  "valor"
    t.string   "talla"
    t.integer  "articulo_id"
    t.integer  "caja_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "referencia_articulos", ["articulo_id"], name: "index_referencia_articulos_on_articulo_id", using: :btree
  add_index "referencia_articulos", ["caja_id"], name: "index_referencia_articulos_on_caja_id", using: :btree

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
