class 
    def savelink(linkurl)
        current_user.artist_url = linkurl
        current_user.save
        flash[:notice] = "Saved!"
        redirect_to root_path
    end
    
  
end