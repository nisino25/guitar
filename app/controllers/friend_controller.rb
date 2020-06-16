class FriendController < ApplicationController

    def index
        @others = User.all
    end

    def following
        @theuser = User.where(email: current_user.following).first
        @songs = @theuser.songs.all
    end

end
