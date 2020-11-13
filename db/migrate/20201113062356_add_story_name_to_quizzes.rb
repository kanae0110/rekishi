class AddStoryNameToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :Story_name, :string
  end
end
