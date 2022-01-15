class ChangeRecipesWeelsTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :recipes_weeks, :recipe_weeks
  end
end
