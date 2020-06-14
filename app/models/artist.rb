class Artist < ApplicationRecord
    has_many :user_artists
    has_many :users, through :user_artists
    validates :name, presence: true
    validates :url, presence: true
    
    def self.save_link(linkurl)
        current_user.artist_url = linkurl
        current_user.save
        flash[:notice] = "Saved!"
        redirect_to root_path
    end
    
end


