class Recipe < ApplicationRecord
    has_many :recipe_weeks
    has_many :weeks, through: :recipe_weeks
    has_many :ingredients

    belongs_to :user
    belongs_to :week

    validates :name, :description, presence: true
end
