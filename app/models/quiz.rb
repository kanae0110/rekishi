class Quiz < ApplicationRecord
    validates :question, presence: true
    validates :answer1, presence: true
    validates :answer2, presence: true
    validates :answer3, presence: true
    validates :answer, presence: true
    validates :description, presence: true
end
