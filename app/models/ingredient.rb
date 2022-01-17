class Ingredient < ApplicationRecord
    belongs_to :recipe

    validates :name, :quantity, presence: true
    validates_uniqueness_of :name, scope: :recipe_id #makes it unique to each recipe

    scope :order_by_name, -> { order(:name) }
end
