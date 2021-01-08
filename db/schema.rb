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

ActiveRecord::Schema.define(version: 2021_01_07_232344) do

  create_table "adventures", force: :cascade do |t|
    t.string "location"
    t.text "description"
    t.string "pass"
    t.string "fail"
    t.integer "item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["item_id"], name: "index_adventures_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "success_rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "morties", force: :cascade do |t|
    t.string "name"
    t.string "attitude"
    t.string "species"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "img"
  end

  create_table "quest_items", force: :cascade do |t|
    t.integer "item_id", null: false
    t.integer "quest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_id"], name: "index_quest_items_on_item_id"
    t.index ["quest_id"], name: "index_quest_items_on_quest_id"
  end

  create_table "quests", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "rick_id", null: false
    t.integer "morty_id", null: false
    t.integer "adventure_id", null: false
    t.boolean "success"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "rick_alive"
    t.boolean "morty_alive"
    t.integer "quest_total"
    t.integer "survival_total"
    t.index ["adventure_id"], name: "index_quests_on_adventure_id"
    t.index ["morty_id"], name: "index_quests_on_morty_id"
    t.index ["rick_id"], name: "index_quests_on_rick_id"
    t.index ["user_id"], name: "index_quests_on_user_id"
  end

  create_table "ricks", force: :cascade do |t|
    t.string "name"
    t.string "attitude"
    t.string "species"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "img"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "level", default: 0, null: false
  end

  add_foreign_key "adventures", "items"
  add_foreign_key "quest_items", "items"
  add_foreign_key "quest_items", "quests"
  add_foreign_key "quests", "adventures"
  add_foreign_key "quests", "morties"
  add_foreign_key "quests", "ricks"
  add_foreign_key "quests", "users"
end
