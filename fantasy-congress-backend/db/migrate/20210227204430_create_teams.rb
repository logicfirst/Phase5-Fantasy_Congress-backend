class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|

      t.integer :user_id
      t.string :team_name

      t.timestamps
    end
  end
end
