class SearchController < ApplicationController
    def show 
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artist.php?data=%E3%81%8F%E3%81%98%E3%82%89'
        doc = Nokogiri::HTML(open(@url))
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord'] //strong ").children
    end

    def p
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=me'
        doc = Nokogiri::HTML(open(@url))
        puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children
    end

    def result
        require 'uri' 
        require 'open-uri' 
        require 'nokogiri' 

        @converted = URI::encode(params[:search]) 
        linkurl = "https://www.ufret.jp/search.php?key="+@converted 
        doc = Nokogiri::HTML(open(linkurl)) 


        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)

        @all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @songs = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(@all -22)
    end
end