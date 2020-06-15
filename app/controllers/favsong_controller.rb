class FavsongController < ApplicationController

    def destroy
        @favorite =current_user.user_songs.where(song_id: params[:id]).first
        @favorite.destroy
        flash[:notice] = "Stopped following the song"
        redirect_to mylist_path
    end
end