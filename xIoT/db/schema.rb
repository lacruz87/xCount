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

ActiveRecord::Schema.define(version: 20180406010702) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acentros", force: :cascade do |t|
    t.bigint "aempresa_id"
    t.string "nombre"
    t.string "descripcion"
    t.string "direccion"
    t.integer "numero"
    t.string "comuna"
    t.string "region"
    t.string "lat"
    t.string "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aempresa_id"], name: "index_acentros_on_aempresa_id"
  end

  create_table "adispositivos", force: :cascade do |t|
    t.string "coreid"
    t.bigint "arecurso_id"
    t.bigint "acentro_id"
    t.string "instalacion_ref"
    t.string "fabricante_core"
    t.string "firmware_version"
    t.string "tipo_dispositivo"
    t.string "software_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["acentro_id"], name: "index_adispositivos_on_acentro_id"
    t.index ["arecurso_id"], name: "index_adispositivos_on_arecurso_id"
  end

  create_table "aempresas", force: :cascade do |t|
    t.string "nombre_empresa"
    t.string "rut_empresa"
    t.string "url_app"
    t.string "url_api"
    t.string "tipo"
    t.string "creado_por"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aevento_dispositivos", force: :cascade do |t|
    t.bigint "adispositivo_id"
    t.string "pin"
    t.string "UM"
    t.float "factor"
    t.bigint "arecurso_id"
    t.bigint "atipo_evento_id"
    t.string "sub_tipo_evento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adispositivo_id"], name: "index_aevento_dispositivos_on_adispositivo_id"
    t.index ["arecurso_id"], name: "index_aevento_dispositivos_on_arecurso_id"
    t.index ["atipo_evento_id"], name: "index_aevento_dispositivos_on_atipo_evento_id"
  end

  create_table "arecursos", force: :cascade do |t|
    t.bigint "acentro_id"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["acentro_id"], name: "index_arecursos_on_acentro_id"
  end

  create_table "atipo_eventos", force: :cascade do |t|
    t.string "nombre"
    t.string "ruta_bd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "e1articulos", force: :cascade do |t|
    t.string "sku"
    t.string "descripcion"
    t.string "UM"
    t.string "formato"
    t.string "familia"
    t.string "sub_Familia"
    t.string "ude1"
    t.string "ude2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "e1centros", force: :cascade do |t|
    t.bigint "e1empresa_id"
    t.string "nombre"
    t.string "descripcion"
    t.string "direccion"
    t.integer "numero"
    t.string "comuna"
    t.string "region"
    t.string "lat"
    t.string "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["e1empresa_id"], name: "index_e1centros_on_e1empresa_id"
  end

  create_table "e1dispositivos", force: :cascade do |t|
    t.string "coreid"
    t.bigint "e1recurso_id"
    t.bigint "e1centro_id"
    t.string "instalacion_ref"
    t.string "fabricante_core"
    t.string "firmware_version"
    t.string "tipo_dispositivo"
    t.string "software_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["e1centro_id"], name: "index_e1dispositivos_on_e1centro_id"
    t.index ["e1recurso_id"], name: "index_e1dispositivos_on_e1recurso_id"
  end

  create_table "e1empresas", force: :cascade do |t|
    t.string "nombre_empresa"
    t.string "rut_empresa"
    t.string "url_app"
    t.string "url_api"
    t.string "tipo"
    t.string "creado_por"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "e1evento_dispositivos", force: :cascade do |t|
    t.bigint "e1dispositivo_id"
    t.string "pin"
    t.string "UM"
    t.float "factor"
    t.bigint "e1recurso_id"
    t.bigint "e1tipo_evento_id"
    t.string "sub_tipo_evento"
    t.string "clasificacion_evento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["e1dispositivo_id"], name: "index_e1evento_dispositivos_on_e1dispositivo_id"
    t.index ["e1recurso_id"], name: "index_e1evento_dispositivos_on_e1recurso_id"
    t.index ["e1tipo_evento_id"], name: "index_e1evento_dispositivos_on_e1tipo_evento_id"
  end

  create_table "e1planprods", force: :cascade do |t|
    t.bigint "e1articulo_id"
    t.bigint "e1recurso_id"
    t.datetime "inicio_plan"
    t.datetime "fin_plan"
    t.string "orden_trabajo"
    t.float "q_plan"
    t.datetime "inicio_real"
    t.datetime "fin_real"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["e1articulo_id"], name: "index_e1planprods_on_e1articulo_id"
    t.index ["e1recurso_id"], name: "index_e1planprods_on_e1recurso_id"
  end

  create_table "e1produccions", force: :cascade do |t|
    t.datetime "timestamp"
    t.bigint "e1recurso_id"
    t.float "qty"
    t.bigint "e1articulo_id"
    t.string "in_ref"
    t.string "grupo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["e1articulo_id"], name: "index_e1produccions_on_e1articulo_id"
    t.index ["e1recurso_id"], name: "index_e1produccions_on_e1recurso_id"
  end

  create_table "e1recursos", force: :cascade do |t|
    t.bigint "e1centro_id"
    t.string "nombre"
    t.bigint "e1ubicacion_id"
    t.string "linea"
    t.string "familia"
    t.string "tipo"
    t.float "productividad_hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["e1centro_id"], name: "index_e1recursos_on_e1centro_id"
    t.index ["e1ubicacion_id"], name: "index_e1recursos_on_e1ubicacion_id"
  end

  create_table "e1reporting_prods", force: :cascade do |t|
    t.datetime "Timestamp"
    t.string "recurso"
    t.string "centro"
    t.string "ubicacion"
    t.datetime "timestamp_5m"
    t.datetime "timestamp_10m"
    t.datetime "timestamp_30m"
    t.datetime "timestamp_1h"
    t.datetime "timestamp_8h"
    t.date "timestamp_24h"
    t.date "timestamp_w"
    t.date "timestamp_MM"
    t.integer "timestamp_Y"
    t.float "Q"
    t.float "time_Q"
    t.string "categoria"
    t.string "articulo"
    t.string "familia"
    t.string "sub_familia"
    t.string "referencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "e1tipo_eventos", force: :cascade do |t|
    t.string "nombre"
    t.string "ruta_bd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "e1ubicacions", force: :cascade do |t|
    t.string "nombre"
    t.string "almacen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "w_ins", force: :cascade do |t|
    t.string "event"
    t.string "name"
    t.string "data"
    t.string "coreid"
    t.string "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wsubscribes", force: :cascade do |t|
    t.string "coreid"
    t.string "id_empresa"
    t.string "empresa_nombre"
    t.string "empresa_app_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "acentros", "aempresas"
  add_foreign_key "adispositivos", "acentros"
  add_foreign_key "adispositivos", "arecursos"
  add_foreign_key "aevento_dispositivos", "adispositivos"
  add_foreign_key "aevento_dispositivos", "arecursos"
  add_foreign_key "aevento_dispositivos", "atipo_eventos"
  add_foreign_key "arecursos", "acentros"
  add_foreign_key "e1centros", "e1empresas"
  add_foreign_key "e1dispositivos", "e1centros"
  add_foreign_key "e1dispositivos", "e1recursos"
  add_foreign_key "e1evento_dispositivos", "e1dispositivos"
  add_foreign_key "e1evento_dispositivos", "e1recursos"
  add_foreign_key "e1evento_dispositivos", "e1tipo_eventos"
  add_foreign_key "e1planprods", "e1articulos"
  add_foreign_key "e1planprods", "e1recursos"
  add_foreign_key "e1produccions", "e1articulos"
  add_foreign_key "e1produccions", "e1recursos"
  add_foreign_key "e1recursos", "e1centros"
  add_foreign_key "e1recursos", "e1ubicacions"
  add_foreign_key "sensores", "empresas"
end
