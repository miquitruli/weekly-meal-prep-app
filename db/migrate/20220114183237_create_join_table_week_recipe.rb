class CreateJoinTableWeekRecipe < ActiveRecord::Migration[6.1]
  def change
    create_join_table :weeks, :recipes do |t|
      # t.index [:week_id, :recipe_id]
      # t.index [:recipe_id, :week_id]
    end
  end
end
