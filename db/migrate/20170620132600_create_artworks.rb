class CreateArtworks < ActiveRecord::Migration[5.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :artist
      t.text :detail
      t.text :focus
      t.string :released_on
      t.references :opinion, foreign_key: true

      t.actable

      t.timestamps
    end
  end
end
