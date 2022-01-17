class RecipeWeek < ApplicationRecord
    belongs_to :week
    belongs_to :recipe

    def self.create_from_week(recipe_ids, week)
        recipe_ids.each do |recipe_id|
            RecipeWeek.create( week_id: week.id, recipe_id: recipe_id)
            recipe = Recipe.find(recipe_id)
            recipe.ingredients.each do |ingredient|
            week_ingredient = WeekIngredient.where(ingredient_name: ingredient.name, week_id: week.id, checked: false).first_or_initialize do |week_ingredient|
                week_ingredient.save
            end
            week_ingredient.checked = false
            week_ingredient.ingredient_quantity = week_ingredient.ingredient_quantity + ingredient.quantity
            week_ingredient.save
        end
    end
end
end