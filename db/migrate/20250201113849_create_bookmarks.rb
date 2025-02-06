class CreateBookmarks < ActiveRecord::Migration[7.2]
  def change
    create_table :bookmarks do |t|
      t.string :id_movies
      t.string :id_lists
      t.string :comment
      t.string :char

      t.timestamps
    end
  end
end
