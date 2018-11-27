class RenameAnotherColumnInRounds < ActiveRecord::Migration[5.2]
  def change
    rename_column :rounds, :real_citation, :citation_start
  end
end