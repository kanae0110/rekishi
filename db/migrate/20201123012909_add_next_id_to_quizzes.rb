class AddNextIdToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :next_id, :integer
  end
end
