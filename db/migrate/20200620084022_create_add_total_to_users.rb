class CreateAddTotalToUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :add_total_to_users do |t|
      add_column :users, :total, :integer, default: 0
    end
  end
end
