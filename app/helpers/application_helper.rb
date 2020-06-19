module ApplicationHelper

    def change_artist(link)

        require 'uri' 
        require 'open-uri' 
        require 'nokogiri' 

        @changed = URI::encode(link) 
        linkurl = "https://www.ufret.jp/artist.php?data="+@changed 
        doc = Nokogiri::HTML(open(linkurl)) 
        @artistnum = doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children.count
        return @artistnum 
    end
end

