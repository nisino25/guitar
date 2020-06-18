class CreateAddArtistCountToUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :add_artist_count_to_users do |t|
      add_column :songs, :count, :integer, default: 0
    end
  end
end
