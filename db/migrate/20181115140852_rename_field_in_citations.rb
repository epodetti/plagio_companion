class RenameFieldInCitations < ActiveRecord::Migration[5.2]
  def change
    rename_column :citations, :game_id, :round_id
  end
end
