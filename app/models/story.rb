class Story < ApplicationRecord
    has_many :quizzes
    
    CATEGORIES = [ "人物", "事件", "戦", "寺社・仏閣", "旅行" ]
    validates :category, presence: true
    validates :name, presence: true

end