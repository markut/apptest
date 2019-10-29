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

ActiveRecord::Schema.define(version: 2019_10_09_215229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "requerimientos", force: :cascade do |t|
    t.bigint "usuario_id"
    t.string "asunto"
    t.text "notas"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "asignado_a_id"
    t.index ["asignado_a_id"], name: "index_requerimientos_on_asignado_a_id"
    t.index ["fecha"], name: "index_requerimientos_on_fecha"
    t.index ["usuario_id"], name: "index_requerimientos_on_usuario_id"
  end

  create_table "seguimientos", force: :cascade do |t|
    t.bigint "requerimiento_id"
    t.string "titulo"
    t.text "descripcion"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requerimiento_id"], name: "index_seguimientos_on_requerimiento_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "seguimientos", "requerimientos"
end
