class CreateAddCountnumToUser < ActiveRecord::Migration[6.0]
  def change
    create_table :add_countnum_to_users do |t|
      add_column :songs, :countnum, :integer, default: 0
    end
  end
end
