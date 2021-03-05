

ActiveRecord::Schema.define(version: 2021_02_27_204451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.string "bill_alpha_id"
    t.string "sponsor_id"
    t.string "sponsor_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "senators", force: :cascade do |t|
    t.integer "team_id"
    t.integer "bill_id"
    t.string "sen_alpha_id"
    t.string "title"
    t.string "first_name"
    t.string "last_name"
    t.string "date_of_birth"
    t.string "party"
    t.string "gender"
    t.string "url"
    t.string "seniority"
    t.string "next_election"
    t.string "phone"
    t.string "state"
    t.string "senate_class"
    t.string "state_rank"
    t.decimal "missed_votes_pct"
    t.decimal "votes_with_party_pct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "user_id"
    t.string "team_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "username"
    t.string "password"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
