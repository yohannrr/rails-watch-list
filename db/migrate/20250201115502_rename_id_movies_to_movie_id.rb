class RenameIdMoviesToMovieId < ActiveRecord::Migration[7.2]
  def change
    rename_column :Bookmark, :id_movies, :movie_id
  end
end
