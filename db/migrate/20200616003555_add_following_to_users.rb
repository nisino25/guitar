class AddFollowingToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :following, :text, default: ""
  end
end
