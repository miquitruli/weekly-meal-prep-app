class ShoppingList < ApplicationRecord
    belongs_to :user
    belongs_to :week

    has_many :ingredients_shopping_lists
    has_many :ingredients, through: :ingredients_shopping_lists

    validates :name, presence: true
end
