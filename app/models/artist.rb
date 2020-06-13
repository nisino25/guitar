class Artist < ApplicationRecord
    has_many :user_artists
    has_many :users, through :user_artists
    validates :name, presence: true
    validates :url, presence: true
end
