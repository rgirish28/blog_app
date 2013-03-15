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

ActiveRecord::Schema.define(:version => 20130315120940) do

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "bio"
    t.string   "website"
    t.string   "twitter"
    t.string   "facebook"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "post_id"
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "following_relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "following_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "following_relationships", ["follower_id"], :name => "index_following_relationships_on_follower_id"
  add_index "following_relationships", ["following_id"], :name => "index_following_relationships_on_following_id"

  create_table "pictures", :force => true do |t|
    t.string   "name"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "pictures", ["imageable_id"], :name => "index_pictures_on_imageable_id"

  create_table "posts", :force => true do |t|
    t.integer  "author_id"
    t.string   "title"
    t.text     "content"
    t.date     "posted"
    t.integer  "likes"
    t.integer  "shares"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "tag_names"
  end

  add_index "posts", ["author_id"], :name => "index_posts_on_author_id"

  create_table "posts_tags", :force => true do |t|
    t.integer "post_id"
    t.integer "tag_id"
  end

  add_index "posts_tags", ["post_id"], :name => "index_posts_tags_on_post_id"
  add_index "posts_tags", ["tag_id"], :name => "index_posts_tags_on_tag_id"

  create_table "tags", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

end
