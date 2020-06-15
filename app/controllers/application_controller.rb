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
        if !Song.exists?(url: params[:link])
            @song = Song.new
            @song.url = "https://www.ufret.jp/" +params[:link]

            require 'open-uri'
            require 'nokogiri'

            doc = Nokogiri::HTML(open('https://www.ufret.jp/song.php?data=44896'))
            @song.title = doc.title.to_s.slice(0..(doc.title.index('/')))[0..-3]

            current_user.songs << @song
            current_user.save
            flash[:notice] = "Saved!"
            redirect_to songs_path
        else
            current_user.songs << Song.where(url: "https://www.ufret.jp/" +params[:link] )
            current_user.save
            flash[:notice] = "Saved!"
            redirect_to songs_path
        end
    end
end
