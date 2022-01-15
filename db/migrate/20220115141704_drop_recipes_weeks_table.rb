class DropRecipesWeeksTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :recipes_weeks
  end
end
