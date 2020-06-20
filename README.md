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


<div class="container">
    <div class="entry"> 
        <h3 class="h3">The result of [ <%= params[:search] %> ]</h3>
        <p> Showing <b class="text-success" ><%= @all - 22  %></b> songs.  </p>
        <p><%= link_to '戻る', search_path %></p>

            <div class="container">
                <div class="row">
                    <div class="col-xs-6">
                        <% @links.each do |link|  %>
                            <p class="source list-group-item">
                            <% if !(current_user.songs.where(url: "https://www.ufret.jp/" +link).first) %>
                                <%= link_to "追加", save_song_path(link: link), method: :patch,class:" badge badge-success text-white" %>
                            <% else %> &nbsp &nbsp &nbsp &nbsp
                            <% end %>
                            <a target="_blank" href=https://www.ufret.jp/<%=link %>>Play</a> &nbsp

                            <% songname = get_songname(link) %>
                            <% artistname = get_artistname(link) %>

                            <%= truncate(songname.to_s, length: 15) %>
                             <b>by <%= truncate(artistname.to_s, length: 15) %></b>
                            </p>
                        <% end %>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br>
    <p class="source">Scraped from <a target="_blank" href=<%=@url %>>Ufret.com</a></p>
</div>


            

            