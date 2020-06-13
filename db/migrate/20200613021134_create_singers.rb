class CreateSingers < ActiveRecord::Migration[6.0]
  def change
    create_table :singers do |t|
      t.string :name
      t.string :url
    end
  end
end
