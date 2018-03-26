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

ActiveRecord::Schema.define(version: 20180326022316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empresas", force: :cascade do |t|
    t.string "nombre_empresa"
    t.string "rut_empresa"
    t.string "url_app"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_ins", force: :cascade do |t|
    t.float "valor"
    t.string "coreid"
    t.datetime "published_at_dt"
    t.string "tipo"
    t.string "ubicacion"
    t.string "centro"
    t.string "almacen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "particles", force: :cascade do |t|
    t.string "event"
    t.string "name"
    t.string "data"
    t.string "coreid"
    t.string "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sensores", force: :cascade do |t|
    t.string "coreid"
    t.string "ubicacion"
    t.string "factor"
    t.string "tipo"
    t.string "ultima_conexion"
    t.bigint "empresa_id"
    t.string "centro"
    t.string "almacen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_sensores_on_empresa_id"
  end

  add_foreign_key "sensores", "empresas"
end
