class CreateAddCountnumberToUser < ActiveRecord::Migration[6.0]
  def change
    create_table :add_countnumber_to_users do |t|
      add_column :users, :countnum, :integer, default: 0
    end
  end
end
