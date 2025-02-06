class AddForeignKeyToBookmarks < ActiveRecord::Migration[7.2]
  def change
    add_foreign_key :bookmarks, :movies, column: :movie_id, on_delete: :restrict
  end
end
