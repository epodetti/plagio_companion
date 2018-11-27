class AddNarratorToRounds < ActiveRecord::Migration[5.2]
  def change
    add_column :rounds, :narrator, :string
  end
end
