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

ActiveRecord::Schema.define(:version => 20121016014015) do

  create_table "api_keys", :force => true do |t|
    t.string   "access_token"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "customers", :force => true do |t|
    t.integer  "order_id"
    t.integer  "pull_id"
    t.integer  "feed_id"
    t.string   "type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "region"
    t.string   "postal_code"
    t.string   "country"
    t.string   "ip_address"
    t.string   "browser_agent"
    t.string   "url"
    t.string   "offer_id"
    t.string   "pub_id"
    t.string   "sub_id"
    t.string   "custom1"
    t.string   "custom2"
    t.string   "custom3"
    t.string   "custom4"
    t.string   "custom5"
    t.string   "acquired_at"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "customers_pushes", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "push_id"
    t.string   "response"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "feeds", :force => true do |t|
    t.string   "url"
    t.string   "name"
    t.string   "type"
    t.string   "status"
    t.integer  "seconds_old"
    t.integer  "include_downloaded"
    t.string   "api_username"
    t.string   "api_password"
    t.string   "sort_by"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "feeds_lists", :force => true do |t|
    t.integer "feed_id"
    t.integer "list_id"
  end

  create_table "lists", :force => true do |t|
    t.integer  "vendor_id"
    t.string   "name"
    t.string   "type"
    t.string   "status"
    t.string   "account_number"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "pulls", :force => true do |t|
    t.integer  "feed_id"
    t.string   "request"
    t.datetime "date_from"
    t.datetime "date_to"
    t.integer  "include_downloaded"
    t.string   "sort_by"
    t.integer  "record_count"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "pushes", :force => true do |t|
    t.integer  "list_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "timezones", :force => true do |t|
    t.string "name"
    t.string "label"
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uuid"
    t.string   "email"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "password_digest"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
