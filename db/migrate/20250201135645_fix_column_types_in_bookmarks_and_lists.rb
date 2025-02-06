class FixColumnTypesInBookmarksAndLists < ActiveRecord::Migration[7.2]
  def change
    change_column :bookmarks, :movie_id, :bigint, using: 'movie_id::bigint'
    change_column :bookmarks, :list_id, :bigint, using: 'list_id::bigint'

    # Supprime la colonne movies_list_id dans la table lists
    remove_column :lists, :movies_list_id

  end
end
