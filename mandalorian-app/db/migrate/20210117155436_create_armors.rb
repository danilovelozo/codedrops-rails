class CreateArmors < ActiveRecord::Migration[6.0]
  def change
    create_table :armors do |t|
      t.string :name
      t.string :description
      t.references :mandalorian
      t.timestamps
    end
  end
end
