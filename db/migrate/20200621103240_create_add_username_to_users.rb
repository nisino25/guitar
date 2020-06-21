class CreateAddUsernameToUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :add_username_to_users do |t|
      add_column :users, :username, :text
    end
  end
end
