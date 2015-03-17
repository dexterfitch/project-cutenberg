ActiveRecord::Schema.define(version: 20150317163008) do

  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "number"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
