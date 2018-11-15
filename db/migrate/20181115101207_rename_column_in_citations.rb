class RenameColumnInCitations < ActiveRecord::Migration[5.2]
  def change
    rename_column :citations, :user_id_id, :user_id
  end
end
