class CreateAddListToUser < ActiveRecord::Migration[6.0]
  def change
    create_table :add_list_to_users do |t|
      add_column :users, :list, :text, default: "Absolute no one"
    end
  end
end
