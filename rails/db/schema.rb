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

ActiveRecord::Schema.define(version: 20160904192746) do

  create_table "branches", force: :cascade do |t|
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "billing_address"
    t.string   "shipping_address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "financial_events", force: :cascade do |t|
    t.integer  "branch_id"
    t.integer  "customer_id"
    t.string   "type"
    t.decimal  "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["branch_id"], name: "index_financial_events_on_branch_id"
    t.index ["customer_id"], name: "index_financial_events_on_customer_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "branch_id"
    t.integer  "customer_id"
    t.decimal  "cost"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["branch_id"], name: "index_orders_on_branch_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_category_id"
    t.decimal  "price"
    t.string   "description"
    t.integer  "preparation_time"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

end
