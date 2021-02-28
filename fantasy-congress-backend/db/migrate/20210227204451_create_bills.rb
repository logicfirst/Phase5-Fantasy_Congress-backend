class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|

      t.string :bill_alpha_id
      t.string :sponsor_id
      t.string :sponsor_name

      t.timestamps
    end
  end
end
