class AddIdeaIDtoUpdatesandPictures < ActiveRecord::Migration
  def up
  	add_column :updates, :idea_id, :integer
  	add_column :pictures, :idea_id, :integer
  	add_index :updates, :idea_id
  end

  def down
  	remove_column :updates, :idea_id
  	remove_column :pictures, :idea_id
  end
end
