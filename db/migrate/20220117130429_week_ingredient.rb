class WeekIngredient < ActiveRecord::Migration[6.1]
  def change
    create_table :week_ingredients do |t|
      t.integer :week_id
      t.string :ingredient_name
      t.integer :ingredient_quantity
      t.boolean :checked, default: false

      t.timestamps
    end
  end
end
