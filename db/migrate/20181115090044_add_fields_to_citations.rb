class AddFieldsToCitations < ActiveRecord::Migration[5.2]
  def change
    add_reference :citations, :user_id, foreign_key: true
    add_reference :citations, :games, foreign_key: true
  end
end
