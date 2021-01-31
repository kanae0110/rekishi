class Quiz < ApplicationRecord
    
    belongs_to :story
    has_many :story_users
    
    validates :content, presence: true
    validates :question, presence: true
    validates :answer1, presence: true
    validates :answer2, presence: true
    validates :answer3, presence: true
    validates :answer, presence: true
    validates :discription, presence: true
end
