class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.integer :sub_category_id
      t.string :question
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer
      t.text :description

      t.timestamps
    end
  end
end
