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
end