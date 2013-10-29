class AddUserIDtoIdeas < ActiveRecord::Migration
  def up
  	add_column :ideas, :user_id, :integer
  	add_index :ideas, :user_id
  end

  def down
  	remove_column :ideas, :user_id
  end
end
