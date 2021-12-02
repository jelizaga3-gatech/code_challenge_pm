# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_02_062616) do

  create_table "add_ons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "add_ons_menuitems", id: false, force: :cascade do |t|
    t.integer "add_on_id", null: false
    t.integer "menuitem_id", null: false
    t.index ["add_on_id", "menuitem_id"], name: "index_add_ons_menuitems_on_add_on_id_and_menuitem_id"
    t.index ["menuitem_id", "add_on_id"], name: "index_add_ons_menuitems_on_menuitem_id_and_add_on_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "diners", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menu_item_orders", force: :cascade do |t|
    t.integer "quantity"
    t.integer "menuitems_id"
    t.integer "restaurant_orders_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menuitems_id"], name: "index_menu_item_orders_on_menuitems_id"
    t.index ["restaurant_orders_id"], name: "index_menu_item_orders_on_restaurant_orders_id"
  end

  create_table "menuitems", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "price", precision: 5, scale: 2
    t.index ["title"], name: "index_menuitems_on_title", unique: true
  end

  create_table "menuitems_menus", id: false, force: :cascade do |t|
    t.integer "menu_id", null: false
    t.integer "menuitem_id", null: false
    t.index ["menu_id", "menuitem_id"], name: "index_menuitems_menus_on_menu_id_and_menuitem_id"
    t.index ["menuitem_id", "menu_id"], name: "index_menuitems_menus_on_menuitem_id_and_menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "restaurants_id"
    t.index ["restaurants_id"], name: "index_menus_on_restaurants_id"
  end

  create_table "restaurant_orders", force: :cascade do |t|
    t.integer "diner_id", null: false
    t.integer "restaurant_id", null: false
    t.decimal "subtotal", precision: 5, scale: 2
    t.decimal "tax", precision: 5, scale: 2
    t.decimal "total", precision: 5, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["diner_id"], name: "index_restaurant_orders_on_diner_id"
    t.index ["restaurant_id"], name: "index_restaurant_orders_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "menus", "restaurants", column: "restaurants_id"
  add_foreign_key "restaurant_orders", "diners"
  add_foreign_key "restaurant_orders", "restaurants"
end
