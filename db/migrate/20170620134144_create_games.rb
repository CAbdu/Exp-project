class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.text :synopsis
      t.string :duration

      t.timestamps
    end
  end
end
