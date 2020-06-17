class CreateAddArtistToUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :add_artist_to_users do |t|
      add_column :songs, :artist, :text, default: "?"
    end
  end
end
