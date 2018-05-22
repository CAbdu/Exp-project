class AddFocusToOpinions < ActiveRecord::Migration[5.0]
  def change
    add_column :opinions, :focus, :text
  end
end
