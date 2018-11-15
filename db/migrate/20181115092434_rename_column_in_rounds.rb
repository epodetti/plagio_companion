class RenameColumnInRounds < ActiveRecord::Migration[5.2]
  def change
    rename_column :rounds, :games_id, :game_id
  end
end
