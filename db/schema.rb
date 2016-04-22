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

ActiveRecord::Schema.define(version: 20160418200337) do

  create_table "academics", force: true do |t|
    t.integer  "subject_id"
    t.integer  "semester_id"
    t.integer  "group_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "catalog_id"
  end

  create_table "acquisitions", force: true do |t|
    t.text     "programa"
    t.text     "real"
    t.text     "observacion"
    t.text     "revision"
    t.integer  "thp"
    t.integer  "thr"
    t.integer  "content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bosses", force: true do |t|
    t.string   "academico"
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "department"
  end

  create_table "calendars", force: true do |t|
    t.date     "inicia"
    t.date     "finaliza"
    t.string   "period"
    t.integer  "year"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "careers", force: true do |t|
    t.string   "name"
    t.string   "plan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs", force: true do |t|
    t.integer  "subject_id"
    t.integer  "group_id"
    t.integer  "semester_id"
    t.integer  "professor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "career_id"
  end

  create_table "competitions", force: true do |t|
    t.text     "generica"
    t.text     "instrumental"
    t.text     "interpersonal"
    t.text     "sistematica"
    t.integer  "content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contents", force: true do |t|
    t.integer  "unidad"
    t.string   "tema"
    t.text     "subtema"
    t.text     "fuente"
    t.text     "didactico"
    t.integer  "summary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.integer  "student_id"
    t.integer  "calendar_id"
    t.integer  "career_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "folders", force: true do |t|
    t.integer  "summary_id"
    t.integer  "calendar_id"
    t.integer  "semester_id"
    t.integer  "career_id"
    t.string   "grupo"
    t.integer  "docente_id"
    t.string   "departamento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "teacher_id"
  end

  create_table "groups", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "learnings", force: true do |t|
    t.text     "especifica"
    t.text     "actividad"
    t.text     "teaching"
    t.text     "portafolio"
    t.integer  "content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "principals", force: true do |t|
    t.string   "academico"
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: true do |t|
    t.integer  "teacher_id"
    t.integer  "calendar_id"
    t.integer  "career_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "releases", force: true do |t|
    t.boolean  "value_one"
    t.boolean  "value_two"
    t.boolean  "value_three"
    t.boolean  "value_four"
    t.boolean  "value_five"
    t.boolean  "value_six"
    t.text     "observation"
    t.integer  "teacher_id"
    t.integer  "boss_id"
    t.integer  "principal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.string   "num"
    t.string   "grupo"
    t.integer  "numero"
    t.integer  "a"
    t.integer  "epo"
    t.integer  "esr"
    t.integer  "e1"
    t.float    "c",            limit: 24
    t.integer  "d"
    t.float    "e",            limit: 24
    t.integer  "f"
    t.float    "g",            limit: 24
    t.string   "total"
    t.integer  "calendar_id"
    t.integer  "teacher_id"
    t.integer  "subject_id"
    t.integer  "semester_id"
    t.integer  "career_id"
    t.integer  "boss_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "professor_id"
  end

  create_table "scores", force: true do |t|
    t.float    "score_one",   limit: 24, default: 0.0
    t.float    "score_two",   limit: 24, default: 0.0
    t.float    "score_three", limit: 24, default: 0.0
    t.float    "score_four",  limit: 24, default: 0.0
    t.float    "score_test",  limit: 24, default: 0.0
    t.float    "score_final", limit: 24, default: 0.0
    t.integer  "subject_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "catalog_id"
    t.integer  "academic_id"
  end

  create_table "semesters", force: true do |t|
    t.string   "grado"
    t.boolean  "current"
    t.integer  "calendar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", force: true do |t|
    t.text     "fuente"
    t.text     "didactic"
    t.integer  "content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "standards", force: true do |t|
    t.text     "conceptual"
    t.text     "procedimental"
    t.text     "actitudinal"
    t.integer  "content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "control"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "sexo"
    t.integer  "semester_id"
    t.integer  "group_id"
    t.integer  "career_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "validate"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true, using: :btree

  create_table "subjects", force: true do |t|
    t.string   "nombre"
    t.string   "clave"
    t.integer  "practica"
    t.integer  "teorica"
    t.integer  "credito"
    t.text     "caracterizacion"
    t.text     "objetivo"
    t.integer  "unit"
    t.integer  "teacher_id"
    t.integer  "semester_id"
    t.integer  "career_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "summaries", force: true do |t|
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "clave"
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "teachers", ["email"], name: "index_teachers_on_email", unique: true, using: :btree
  add_index "teachers", ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "clave"
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
