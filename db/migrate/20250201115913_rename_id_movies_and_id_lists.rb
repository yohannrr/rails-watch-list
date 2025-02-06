class RenameIdMoviesAndIdLists < ActiveRecord::Migration[7.2]
  def change
    rename_column :bookmarks, :id_movies, :movie_id
    rename_column :bookmarks, :id_lists, :list_id
  end
end
