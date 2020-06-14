class AddOneMoreToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :one_more, :text, default: "search_path"
  end
end
