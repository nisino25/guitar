class FriendController < ApplicationController

    def index
        @others = User.all

        # @others.each do |other|
        #     other.songs.each |song|
        #         @counts = 0
        #         if current_user.songs.exists?(url: song.url)
        #             @counts = @counts + 1
        #         end
        #     end
        # end
    end

    def following
        @theuser = User.where(email: current_user.following).first
        @songs = @theuser.songs.all
    end

end
