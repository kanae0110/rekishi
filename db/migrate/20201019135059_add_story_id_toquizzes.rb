class AddStoryIdToquizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :story_id, :integer
  end
end
