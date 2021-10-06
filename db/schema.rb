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

ActiveRecord::Schema.define(version: 2021_10_06_134452) do

  create_table "coffees", force: :cascade do |t|
    t.string "name"
    t.string "roast"
    t.string "image"
    t.integer "roaster_id"
    t.index ["roaster_id"], name: "index_coffees_on_roaster_id"
  end

  create_table "drinkers", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.integer "rating"
    t.integer "coffee_id"
    t.integer "drinker_id"
    t.index ["coffee_id"], name: "index_reviews_on_coffee_id"
    t.index ["drinker_id"], name: "index_reviews_on_drinker_id"
  end

  create_table "roasters", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "image"
    t.string "url"
  end

end
