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

ActiveRecord::Schema.define(version: 2018_10_30_175056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "devices", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.money "price", scale: 2
    t.bigint "user_id"
    t.bigint "order_id"
    t.bigint "hardware_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hardware_id"], name: "index_devices_on_hardware_id"
    t.index ["order_id"], name: "index_devices_on_order_id"
    t.index ["user_id"], name: "index_devices_on_user_id"
  end

  create_table "hardwares", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "category"
    t.money "price", scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "quantity"
    t.money "price", scale: 2
    t.bigint "user_id"
    t.bigint "order_id"
    t.bigint "hardware_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hardware_id"], name: "index_order_items_on_hardware_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["user_id"], name: "index_order_items_on_user_id"
  end

  create_table "orders", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.bigint "user_id"
    t.integer "total_count"
    t.money "total_price", scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.string "currency", default: "USD"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

end
