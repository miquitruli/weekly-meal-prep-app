class DropIngredientsRecipesTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :ingredients_recipes
  end
end
