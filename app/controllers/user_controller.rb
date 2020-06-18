class UserController < ApplicationController

    def mylist
        @songs = current_user.songs.all
    end

    def mylist_artist
        @songs = current_user.songs.all
    end

    

    


end