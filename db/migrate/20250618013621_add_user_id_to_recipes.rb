class AddUserIdToRecipes < ActiveRecord::Migration[8.0]
  def change
    add_column :recipes, :user_id, :integer
  end
end
