class Week < ApplicationRecord
    belongs_to :user
    has_many :recipe_weeks

    has_many :recipes, through: :recipe_weeks

    validates :name, presence: true

    def self.current_week
        Time.current.beginning_of_week.strftime("%U").to_i
    end
end
