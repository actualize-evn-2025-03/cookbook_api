class CreateRecipes < ActiveRecord::Migration[8.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :chef
      t.string :ingredients
      t.string :directions
      t.string :prep_time

      t.timestamps
    end
  end
end
