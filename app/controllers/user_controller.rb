class UserController < ApplicationController

    def mylist
        @songs = current_user.songs.all
    end


end