class CreateMatchTeams < ActiveRecord::Migration
  def change
    create_table :match_teams do |t|
      t.references :match, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
