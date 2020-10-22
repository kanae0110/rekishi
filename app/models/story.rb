class Story < ApplicationRecord
    validates :category, presence: true
    validates :name, presence: true
end