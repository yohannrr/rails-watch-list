class AddMoviesIdToLists < ActiveRecord::Migration[7.2]
  def change
    add_column :lists, :movies_list_id, :integer
  end
end
