# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_210_306_184_436) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'houses', force: :cascade do |t|
    t.string 'category', null: false
    t.integer 'size', null: false
    t.integer 'rooms', null: false
    t.integer 'bathrooms', null: false
    t.integer 'price', null: false
    t.string 'address'
    t.string 'link', null: false
    t.bigint 'owner_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['owner_id'], name: 'index_houses_on_owner_id'
  end

  create_table 'owners', force: :cascade do |t|
    t.string 'category', null: false
    t.string 'name', null: false
    t.string 'phone'
    t.string 'email'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'houses', 'owners'
end
