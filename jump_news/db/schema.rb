# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_829_031_751) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'comments', force: :cascade do |t|
    t.text 'body'
    t.bigint 'user_id', null: false
    t.bigint 'link_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['link_id'], name: 'index_comments_on_link_id'
    t.index ['user_id'], name: 'index_comments_on_user_id'
  end

  create_table 'links', force: :cascade do |t|
    t.string 'title'
    t.string 'url'
    t.text 'description'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.integer 'points', default: 1
    t.float 'hot_score', default: 0.0
    t.index ['user_id'], name: 'index_links_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'password_digest'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'votes', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'link_id', null: false
    t.integer 'upvote', default: 0
    t.integer 'downvote', default: 0
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['link_id'], name: 'index_votes_on_link_id'
    t.index ['user_id'], name: 'index_votes_on_user_id'
  end

  add_foreign_key 'comments', 'links'
  add_foreign_key 'comments', 'users'
  add_foreign_key 'links', 'users'
  add_foreign_key 'votes', 'links'
  add_foreign_key 'votes', 'users'
end
