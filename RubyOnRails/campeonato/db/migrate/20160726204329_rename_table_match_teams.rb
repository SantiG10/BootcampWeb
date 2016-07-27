class RenameTableMatchTeams < ActiveRecord::Migration
  def change
    rename_table :match_teams, :matches_teams
  end
end
