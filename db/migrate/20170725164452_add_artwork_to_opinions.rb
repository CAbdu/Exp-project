class AddArtworkToOpinions < ActiveRecord::Migration[5.0]
  def change
    add_reference :opinions, :artwork, foreign_key: true
  end
end
