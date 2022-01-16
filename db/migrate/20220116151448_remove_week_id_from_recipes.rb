class RemoveWeekIdFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :week_id
  end
end
