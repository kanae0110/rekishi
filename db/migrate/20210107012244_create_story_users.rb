class CreateStoryUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :story_users do |t|
      t.references :story, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :quiz_id

      t.timestamps
    end
  end
end
