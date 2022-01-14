class Week < ApplicationRecord
    belongs_to :user
    has_many :recipes_weeks
    has_many :shopping_lists_weeks

    has_many :recipes, through: :recipes_weeks
    has_many :shopping_lists, through: :shopping_lists_weeks

    validates :name, presence: true
end
