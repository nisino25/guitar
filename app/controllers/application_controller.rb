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
end
