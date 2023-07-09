class AddAvatarAndUserNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :avatar, :string
    add_column :users, :username, :string
  end
end
