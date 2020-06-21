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

    def following_artist
        @theuser = User.where(email: current_user.following).first
        @songs = @theuser.songs.all
        @songartists = @songs.pluck(:artist).uniq
    end

    def artist_following_with_limit
        @theuser = User.where(email: current_user.following).first 
        @songs = @theuser.songs.all
        @songartists = @songs.pluck(:artist).uniq
        @inst = @theuser.list
        require 'uri' 
        require 'open-uri' 
        require 'nokogiri' 
    end


end
