class AddColumnUserToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user, :string
  end
end
