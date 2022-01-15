class AddQuantityToIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :quantity, :integer
    add_column :ingredients, :measurement, :string
    add_column :ingredients, :recipe_id, :integer
  end
end
