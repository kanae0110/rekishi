class RenameDescriptionColumnToQuizzes < ActiveRecord::Migration[5.2]
  def change
    rename_column :quizzes, :description, :discription
  end
end
