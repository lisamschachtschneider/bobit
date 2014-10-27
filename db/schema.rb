ActiveRecord::Schema.define(version: 20141024153249) do
  enable_extension "plpgsql"

  create_table "songs", force: true do |t|
    t.string   "artist"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file"
  end
end
