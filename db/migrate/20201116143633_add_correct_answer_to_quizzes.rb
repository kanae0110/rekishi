class AddCorrectAnswerToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :correct_answer, :string
  end
end
