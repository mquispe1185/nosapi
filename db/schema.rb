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

ActiveRecord::Schema.define(version: 2020_07_06_215914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "afiliados", force: :cascade do |t|
    t.string "apellido"
    t.string "nombre"
    t.string "dni"
    t.integer "sexo"
    t.string "domicilio"
    t.bigint "provincia_id"
    t.bigint "localidad_id"
    t.bigint "departamento_id"
    t.string "telefono"
    t.string "celular"
    t.boolean "contactado", default: false
    t.boolean "afiliado", default: false
    t.boolean "adherido", default: false
    t.boolean "es_afiliador", default: false
    t.bigint "contactado_by_id"
    t.bigint "afiliado_by_id"
    t.bigint "adherido_by_id"
    t.bigint "created_by_id"
    t.bigint "updated_by_id"
    t.string "observaciones"
    t.boolean "activo", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "origen_id"
    t.string "email"
    t.index ["adherido_by_id"], name: "index_afiliados_on_adherido_by_id"
    t.index ["afiliado_by_id"], name: "index_afiliados_on_afiliado_by_id"
    t.index ["contactado_by_id"], name: "index_afiliados_on_contactado_by_id"
    t.index ["created_by_id"], name: "index_afiliados_on_created_by_id"
    t.index ["departamento_id"], name: "index_afiliados_on_departamento_id"
    t.index ["localidad_id"], name: "index_afiliados_on_localidad_id"
    t.index ["origen_id"], name: "index_afiliados_on_origen_id"
    t.index ["provincia_id"], name: "index_afiliados_on_provincia_id"
    t.index ["updated_by_id"], name: "index_afiliados_on_updated_by_id"
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "nombre"
    t.bigint "provincia_id"
    t.boolean "activo", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provincia_id"], name: "index_departamentos_on_provincia_id"
  end

  create_table "localidades", force: :cascade do |t|
    t.string "nombre"
    t.bigint "departamento_id"
    t.bigint "provincia_id"
    t.boolean "activo", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_localidades_on_departamento_id"
    t.index ["provincia_id"], name: "index_localidades_on_provincia_id"
  end

  create_table "origenes", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provincias", force: :cascade do |t|
    t.string "nombre"
    t.boolean "activo", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "nombre"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.string "dni"
    t.string "telefono"
    t.boolean "activo", default: true
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "rol_id"
    t.bigint "provincia_id"
    t.bigint "departamento_id"
    t.bigint "localidad_id"
    t.integer "sexo"
    t.index ["confirmation_token"], name: "index_usuarios_on_confirmation_token", unique: true
    t.index ["departamento_id"], name: "index_usuarios_on_departamento_id"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["localidad_id"], name: "index_usuarios_on_localidad_id"
    t.index ["provincia_id"], name: "index_usuarios_on_provincia_id"
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
    t.index ["rol_id"], name: "index_usuarios_on_rol_id"
    t.index ["uid", "provider"], name: "index_usuarios_on_uid_and_provider", unique: true
  end

  add_foreign_key "afiliados", "departamentos"
  add_foreign_key "afiliados", "localidades"
  add_foreign_key "afiliados", "origenes"
  add_foreign_key "afiliados", "provincias"
  add_foreign_key "afiliados", "usuarios", column: "adherido_by_id"
  add_foreign_key "afiliados", "usuarios", column: "afiliado_by_id"
  add_foreign_key "afiliados", "usuarios", column: "contactado_by_id"
  add_foreign_key "afiliados", "usuarios", column: "created_by_id"
  add_foreign_key "afiliados", "usuarios", column: "updated_by_id"
  add_foreign_key "departamentos", "provincias"
  add_foreign_key "localidades", "departamentos"
  add_foreign_key "localidades", "provincias"
  add_foreign_key "usuarios", "departamentos"
  add_foreign_key "usuarios", "localidades"
  add_foreign_key "usuarios", "provincias"
  add_foreign_key "usuarios", "roles"
end
