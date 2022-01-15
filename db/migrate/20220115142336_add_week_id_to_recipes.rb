class AddWeekIdToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :week_id, :integer
  end
end
