class UserController < ApplicationController

    def mylist
        @songs = current_user.songs.all
    end

    def mylist_artist
        @songs = current_user.songs.all
        @songartists = @songs.pluck(:artist).uniq
    end

    def artist_with_limit
        require 'uri' 
        require 'open-uri' 
        require 'nokogiri' 
        @songs = current_user.songs.all
        @songartists = @songs.pluck(:artist).uniq
        @inst = current_user.list
        @jumplink = current_user.list
    end
    
end