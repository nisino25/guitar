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

   
  
    def get_link(link)

        require 'uri' 
        require 'open-uri' 
        require 'nokogiri' 

        @changed = URI::encode(link) 
        linkurl = "https://www.ufret.jp/artist.php?data="+@changed 
        doc = Nokogiri::HTML(open(linkurl)) 
        @artistnum = doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children.count
        return @artistnum 
    end

    def get_songname(link)
        require 'uri' 
        require 'open-uri' 
        require 'nokogiri' 

        doc = Nokogiri::HTML(open("https://www.ufret.jp/"+link)) 
        @gotsong = doc.title.to_s.slice(0..(doc.title.index('/')))[0..-3]
        return @gotsong
    end
    def get_artistname(link)
        require 'uri' 
        require 'open-uri' 
        require 'nokogiri' 

        doc = Nokogiri::HTML(open("https://www.ufret.jp/"+link)) 
        @gotartist = doc.xpath(" //a [@class= 'show_artist']").children
        return @gotartist
    end
end

