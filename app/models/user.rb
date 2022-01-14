class User < ApplicationRecord
    has_secure_password

    has_many :weeks
    has_many :recipes
    has_many :shopping_lists, through: :weeks

    validates :username, presence: true
end
