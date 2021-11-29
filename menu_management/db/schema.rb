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

ActiveRecord::Schema.define(version: 2021_11_29_011357) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "menus", "restaurants", column: "restaurants_id"
end
