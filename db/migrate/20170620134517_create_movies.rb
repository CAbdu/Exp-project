class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.text :synopsis
      t.string :duration

      t.timestamps
    end
  end
end
