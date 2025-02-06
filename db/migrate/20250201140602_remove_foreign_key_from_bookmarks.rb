class RemoveForeignKeyFromBookmarks < ActiveRecord::Migration[7.2]
  def change
    remove_foreign_key :bookmarks, :movies
  end
end
