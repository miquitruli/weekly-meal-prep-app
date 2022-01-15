class Ingredient < ApplicationRecord
    belongs_to :recipe

    validates :name, :quantity, :measurement, presence: true
end
