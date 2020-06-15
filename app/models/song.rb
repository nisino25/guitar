class Song < ApplicationRecord
    has_many :user_songs
    has_many :users, through: :user_songs

    validates :title, presence: true
    validates :url, presence: true
end

