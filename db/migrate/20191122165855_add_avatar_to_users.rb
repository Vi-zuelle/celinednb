class AddAvatarToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatar, :string, default: "http://caillouetland.com/wp-content/uploads/2017/07/avatar-blank.png"
  end
end
