class CreateMandalorians < ActiveRecord::Migration[6.0]
  def change
    create_table :mandalorians do |t|
      t.string :name
      t.string :spaceship
      t.string :companion

      t.timestamps
    end
  end
end
