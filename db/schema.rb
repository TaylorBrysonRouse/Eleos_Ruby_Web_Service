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

ActiveRecord::Schema.define(version: 2022_01_06_214749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "loads", id: false, force: :cascade do |t|
    t.string "id"
    t.string "display_identifier"
    t.integer "sort"
    t.string "order_number"
    t.string "load_status"
    t.string "load_status_label"
    t.boolean "active"
    t.boolean "current"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "direction"
    t.string "username"
    t.string "message_type"
    t.string "body"
    t.string "composed_at"
    t.string "platform_received_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "full_name"
    t.string "menu_code"
    t.string "custom_settings_form_code"
    t.string "dashboard_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "api_token"
  end

end
