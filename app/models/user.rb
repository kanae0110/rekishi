class User < ApplicationRecord
    has_secure_password
    has_many :story_users
    has_many :stories, through: :story_users
    
    validates :name, presence: true, length: {maximum: 20}
    validates :email, presence: true, length: {maximum: 50}
end
