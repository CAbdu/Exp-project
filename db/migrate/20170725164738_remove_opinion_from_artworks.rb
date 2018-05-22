class RemoveOpinionFromArtworks < ActiveRecord::Migration[5.0]
  def change
    remove_reference :artworks, :opinion, foreign_key: true
  end
end
