class RecipeWeek < ApplicationRecord
    belongs_to :week
    belongs_to :recipe
end