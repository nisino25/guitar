class User < ApplicationRecord
  has_many :user_artists
  has_many :artists, through: :user_artists
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
       

end

