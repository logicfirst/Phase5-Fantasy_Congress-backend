class CreateSenators < ActiveRecord::Migration[6.0]
  def change
    create_table :senators do |t|

      t.integer :team_id
      t.integer :bill_id
      t.string :sen_alpha_id

      t.timestamps
    end
  end
end
