class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
