class AddContentToquizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :content, :text
  end
end
