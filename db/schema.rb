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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120113031359) do

  create_table "incomes", :force => true do |t|
    t.date     "date",       :limit => 255, :null => false
    t.string   "goods_type"
    t.string   "name"
    t.decimal  "price"
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uname"
  end

  create_table "pays", :force => true do |t|
    t.date     "date",        :limit => 255, :null => false
    t.string   "goods_type"
    t.string   "name"
    t.decimal  "price"
    t.string   "image_url"
    t.string   "receipt_url"
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uname"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
