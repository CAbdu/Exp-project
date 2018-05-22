class RemoveFocusFromArtworks < ActiveRecord::Migration[5.0]
  def change
    remove_column :artworks, :focus, :text
  end
end
