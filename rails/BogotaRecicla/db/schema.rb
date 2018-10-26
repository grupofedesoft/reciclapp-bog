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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tbl_actividad", primary_key: "Id", comment: "Tabla que almacena las actividades definidas", force: :cascade do |t|
    t.string "Nombre", limit: 50, null: false
    t.string "Detalle", limit: 150, null: false
    t.string "Recurso", limit: 50, null: false
    t.boolean "Estado", default: true, null: false
    t.integer "Puntaje", null: false
  end

  create_table "tbl_barrio", primary_key: "Id", comment: "Tabla que almacena los barrios de Bogota", force: :cascade do |t|
    t.string "Nombre", limit: 50, null: false
    t.boolean "Estado", default: true, null: false
    t.integer "Upz", null: false
  end

  create_table "tbl_consejo", primary_key: "Id", comment: "Tabla que almacena los tips o consejos para reciclaje", force: :cascade do |t|
    t.string "Nombre", limit: 50, null: false
    t.string "Recurso", limit: 50, null: false
    t.string "Detalle", limit: 150, null: false
    t.boolean "Estado", default: true, null: false
  end

  create_table "tbl_dia", primary_key: "Id", comment: "Tabla que almacena los diaspara la relación de la recolección de los horarios", force: :cascade do |t|
    t.string "Nombre", limit: 50, null: false
    t.boolean "Estado", default: true, null: false
  end

  create_table "tbl_entidad", primary_key: "Id", comment: "Tabla que almacena las entidades encargadas de hacer efectivo los incentivos", force: :cascade do |t|
    t.integer "Tipo_Doc", null: false
    t.integer "Documento", null: false
    t.string "Nombre", limit: 50, null: false
    t.boolean "Estado", default: true, null: false
  end

  create_table "tbl_horario", primary_key: "Id", comment: "Tabla que almacena los horarios establecidos por localidad para la recolección de basuras", force: :cascade do |t|
    t.boolean "Estado", default: true, null: false
    t.integer "Localidad", null: false
    t.integer "Dia", null: false
    t.string "HoraInicial", null: false
    t.string "HoraFinal", null: false
  end

  create_table "tbl_incentivo", primary_key: "Id", comment: "Tabla que almacena los incentivos para las actividades realizadas", force: :cascade do |t|
    t.string "Nombre", limit: 50, null: false
    t.string "Detalle", limit: 150, null: false
    t.boolean "Estado", default: true, null: false
    t.integer "Actividad", null: false
    t.integer "Entidad", null: false
  end

  create_table "tbl_localidad", primary_key: "Id", comment: "Tabla que almacena las localidades de Bogota", force: :cascade do |t|
    t.string "Nombre", limit: 50, null: false
    t.boolean "Estado", default: true, null: false
  end

  create_table "tbl_operador", primary_key: "Id", comment: "Tabla que almacena los operadores de recolección de basuras en Bogota", force: :cascade do |t|
    t.string "Nombre", limit: 100, null: false
    t.integer "Tipo_Doc", null: false
    t.integer "Documento", null: false
    t.boolean "Estado", default: true, null: false
    t.integer "Localidad", null: false
  end

  create_table "tbl_tipo_documento", primary_key: "Id", comment: "Tabla que almacena los tipo de documento existentes", force: :cascade do |t|
    t.string "Tipo_Doc", limit: 2, null: false
    t.string "Nombre", limit: 50, null: false
    t.boolean "Estado", null: false
  end

  create_table "tbl_upz", primary_key: "Id", comment: "Tabla que almacena las UPZ establecidad en Bogota", force: :cascade do |t|
    t.string "Nombre", limit: 50, null: false
    t.boolean "Estado", default: true, null: false
    t.integer "Localidad", null: false
  end

  create_table "tbl_usuario", primary_key: "Id", comment: "Tabla que almacena los usuarios", force: :cascade do |t|
    t.string "Email", limit: 50, null: false
    t.string "Contraseña", limit: 20
    t.boolean "Estado", default: true, null: false
    t.integer "Barrio", null: false
  end

  create_table "tbl_usuario_actividad", primary_key: "Id", comment: "Tabla que almacena las actividades definidas", force: :cascade do |t|
    t.date "Fecha", null: false
    t.integer "Usuario", null: false
    t.integer "Actividad", null: false
  end

  add_foreign_key "tbl_barrio", "tbl_upz", column: "Upz", primary_key: "Id", name: "FK_barrio_upz"
  add_foreign_key "tbl_entidad", "tbl_tipo_documento", column: "Tipo_Doc", primary_key: "Id", name: "FK_entidad_tipo_doc"
  add_foreign_key "tbl_horario", "tbl_dia", column: "Dia", primary_key: "Id", name: "FK_horario_dia"
  add_foreign_key "tbl_horario", "tbl_localidad", column: "Localidad", primary_key: "Id", name: "FK_horario_localidad"
  add_foreign_key "tbl_incentivo", "tbl_actividad", column: "Id", primary_key: "Id", name: "FK_incentivo_actividad"
  add_foreign_key "tbl_incentivo", "tbl_entidad", column: "Id", primary_key: "Id", name: "FK_incentivo_entidad"
  add_foreign_key "tbl_operador", "tbl_localidad", column: "Localidad", primary_key: "Id", name: "FK_operador_localidad"
  add_foreign_key "tbl_operador", "tbl_tipo_documento", column: "Tipo_Doc", primary_key: "Id", name: "FK_operador_tipo_doc"
  add_foreign_key "tbl_upz", "tbl_localidad", column: "Localidad", primary_key: "Id", name: "FK_upz_localidad"
  add_foreign_key "tbl_usuario", "tbl_barrio", column: "Barrio", primary_key: "Id", name: "FK_usuario_barrio"
  add_foreign_key "tbl_usuario", "tbl_tipo_documento", column: "Id", primary_key: "Id", name: "FK_usuario_tipo_doc"
  add_foreign_key "tbl_usuario_actividad", "tbl_actividad", column: "Actividad", primary_key: "Id", name: "FK_usuario_actividad_actividad"
  add_foreign_key "tbl_usuario_actividad", "tbl_usuario", column: "Usuario", primary_key: "Id", name: "FK_usuario_actividad_usuario"
end
