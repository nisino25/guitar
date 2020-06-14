class AddArtisturlToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :artist_url, :text, default: "https://www.ufret.jp/artist.php?data=RADWIMPS"
  end
end
