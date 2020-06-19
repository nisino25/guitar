  patch '/change_list', to: 'application#change_list'

  def change_list 
        current_user.list = params[:newname]
        current_user.save
        redirect_to artist_with_limit_path
    end


 <% @changed = URI::encode(songartist) %>
            <% linkurl = "https://www.ufret.jp/artist.php?data="+@changed %>
            <% doc = Nokogiri::HTML(open(linkurl)) %>
            <% @artistnum = doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children.count %>

            <%= @artistnum %></b> total songs.