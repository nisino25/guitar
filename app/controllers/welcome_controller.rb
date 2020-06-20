class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

    def index
        
        @totalnum = 0
        @users = User.all
        @users.each do |user|
            @totalnum = @totalnum + user.total 
        end 

        @totalsongs = 0
        @users.each do |user|
            @totalsongs = @totalsongs + user.songs.count
        end 
        

        @totalartists = 0
        @users.each do |user|
            @totalartists = @totalartists + user.countnum
        end 

    end
    

end
