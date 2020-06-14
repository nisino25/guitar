class AddHiraganaToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :hiragana, :text, default: ""
  end
end
