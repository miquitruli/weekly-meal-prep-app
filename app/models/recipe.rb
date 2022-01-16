class Recipe < ApplicationRecord
    has_many :recipe_weeks
    has_many :weeks, through: :recipe_weeks
    has_many :ingredients

    belongs_to :user

    validates :name, :description, presence: true
    validates_uniqueness_of :name, scope: :user_id
end
