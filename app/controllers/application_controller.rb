class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def save_link
        current_user.artist_url = "https://www.ufret.jp/" +params[:link]
        current_user.save
        redirect_to songs_path
    end

    def save_hiragana
        current_user.one_more = "https://www.ufret.jp/artistlist.php?data="+params[:hira]
        current_user.save
        redirect_to artist_path
    end

    def save_song
        if !Song.exists?(url: "https://www.ufret.jp/"+params[:link])
            @song = Song.new
            @song.url = "https://www.ufret.jp/" +params[:link]

            require 'open-uri'
            require 'nokogiri'

            doc = Nokogiri::HTML(open(@song.url))
            @song.title = doc.title.to_s.slice(0..(doc.title.index('/')))[0..-3]
            @song.artist = doc.xpath(" //a [@class= 'show_artist']").children

            current_user.songs << @song
            current_user.countnum+=1
            current_user.save
            flash[:notice] = "Saved (You are the first one playing this song!)"
            redirect_to songs_path
        else
            @song = Song.where(url: "https://www.ufret.jp/"+params[:link]).first
            current_user.songs << @song
            current_user.countnum+=1
            current_user.save
            flash[:notice] = "Saved (seems like someone has alreday played the song!)"
            redirect_to songs_path
        end
    end

    def take_song 
        @thesong = Song.where(url: params[:link]).first
        current_user.songs << @thesong
        current_user.countnum+=1
        current_user.save
        flash[:notice] = "Successfully saved to your list"
        redirect_to song_of_following_path
    end


    def save_following
        current_user.following = params[:email]
        current_user.save
        redirect_to song_of_following_path
    end

    

    
end
