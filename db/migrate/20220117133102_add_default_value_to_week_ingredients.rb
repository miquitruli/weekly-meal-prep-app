class AddDefaultValueToWeekIngredients < ActiveRecord::Migration[6.1]
  def change
    change_column :week_ingredients, :ingredient_quantity, :integer, default:0
  end
end
