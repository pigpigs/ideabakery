class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :filepicker_url

      t.timestamps
    end
  end
end
