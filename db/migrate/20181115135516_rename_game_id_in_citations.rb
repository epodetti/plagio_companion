class RenameGameIdInCitations < ActiveRecord::Migration[5.2]
  def change
    rename_column :citations, :games_id, :game_id
  end
end
