class AddRealCitationToRounds < ActiveRecord::Migration[5.2]
  def change
    add_column :rounds, :real_citation, :text
  end
end