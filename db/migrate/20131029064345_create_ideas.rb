class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :desc
      t.boolean :featured
      t.integer :progress

      t.timestamps
    end
  end
end
