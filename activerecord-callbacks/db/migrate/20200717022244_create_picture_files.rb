class CreatePictureFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :picture_files do |t|

      t.timestamps
    end
  end
end
