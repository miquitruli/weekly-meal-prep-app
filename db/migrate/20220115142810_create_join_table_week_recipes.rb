class CreateJoinTableWeekRecipes < ActiveRecord::Migration[6.1]
  def change
    create_join_table :weeks, :recipes do |t|
      # t.index [:week_id, :recipe_id]
      # t.index [:recipe_id, :week_id]
      t.boolean :completed, default: false
    end
  end
end
