class AddFieldsInCitations < ActiveRecord::Migration[5.2]
  def change
    add_column :citations, :body, :text
  end
end
