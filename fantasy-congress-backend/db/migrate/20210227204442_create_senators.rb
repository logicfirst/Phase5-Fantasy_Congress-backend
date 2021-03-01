class CreateSenators < ActiveRecord::Migration[6.0]
  def change
    create_table :senators do |t|

      t.integer :team_id
      t.integer :bill_id
      t.string :sen_alpha_id

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
      
      t.timestamps
    end
  end
end
