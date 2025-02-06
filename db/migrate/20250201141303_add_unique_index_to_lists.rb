class AddUniqueIndexToLists < ActiveRecord::Migration[7.2]
  def change
    add_index :lists, :name, unique: true
  end
end
