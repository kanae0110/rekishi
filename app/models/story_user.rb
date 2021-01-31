class StoryUser < ApplicationRecord
  belongs_to :story
  belongs_to :user
  belongs_to :quiz
end
