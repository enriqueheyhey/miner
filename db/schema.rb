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

ActiveRecord::Schema.define(version: 20171231192932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "servers", force: :cascade do |t|
    t.string   "name"
    t.string   "mining"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
    t.integer  "serverstatus", default: 0
    t.index ["user_id"], name: "index_servers_on_user_id", using: :btree
  end

  create_table "transactions", force: :cascade do |t|
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "type"
    t.decimal  "amount",     precision: 8, scale: 2
    t.integer  "user_id"
    t.integer  "server_id"
    t.index ["server_id"], name: "index_transactions_on_server_id", using: :btree
    t.index ["user_id"], name: "index_transactions_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "wallets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "type"
    t.text     "address"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_wallets_on_user_id", using: :btree
  end

  add_foreign_key "servers", "users"
  add_foreign_key "transactions", "servers"
  add_foreign_key "transactions", "users"
  add_foreign_key "wallets", "users"
end
