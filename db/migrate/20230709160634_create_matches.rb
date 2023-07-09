class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.bigint :home_team_id 
      t.bigint :away_team_id
      t.datetime :start_date_time
      t.integer :price

      t.timestamps
    end
    
    add_foreign_key :matches, :teams, column: :home_team_id
    add_foreign_key :matches, :teams, column: :away_team_id
  end
end
