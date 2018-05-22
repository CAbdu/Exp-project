class AddGenresToArtworks < ActiveRecord::Migration[5.0]
  def change
    add_column :artworks, :genre, :string
  end
end
