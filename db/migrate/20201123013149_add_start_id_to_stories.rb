class AddStartIdToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :start_id, :integer
  end
end
