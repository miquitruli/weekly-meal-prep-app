class CreateRecipeWeeks < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_weeks do |t|
      t.integer :recipe_id
      t.integer :week_id
      t.timestamps
    end
  end
end
