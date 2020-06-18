class FavsongController < ApplicationController

    def destroy
        @goner = Song.find(params[:id])
        @goner = @goner.artist

        @favorite =current_user.user_songs.where(song_id: params[:id]).first
        @favorite.destroy
        if !current_user.songs.exists?(artist: @goner)
            current_user.countnum -=1
            current_user.save
            flash[:alert] = "That song was the artist's last one in your list"
        else
            flash[:alert] = "Stopped following the song"
        end
        redirect_to mylist_path
    end
end