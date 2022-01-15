class DropShoppingListsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :shopping_lists
  end
end
