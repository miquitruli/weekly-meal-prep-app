class User < ApplicationRecord
    has_secure_password

    has_many :weeks
    has_many :recipes

    validates :email, :name, presence: true
    validates :email, uniqueness: true
end
