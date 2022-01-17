class DropRecipeWeeks < ActiveRecord::Migration[6.1]
  def change
    drop_table :recipe_weeks
  end
end
