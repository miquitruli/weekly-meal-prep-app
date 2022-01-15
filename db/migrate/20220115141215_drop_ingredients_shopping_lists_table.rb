class DropIngredientsShoppingListsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :ingredients_shopping_lists
  end
end
