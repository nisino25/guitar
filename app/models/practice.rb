require 'uri'
require 'open-uri'
require 'nokogiri'

@changed = URI::encode("Mega Shinnosuke")

linkurl = "https://www.ufret.jp/artist.php?data="+@changed 

 
# スクレイピング先のURL
 
doc = Nokogiri::HTML(open(linkurl))
 
#puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children
# puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/@href").children
# puts doc.xpath(" //h1 [@style= 'margin-top:7px;margin-bottom:5px;margin-left:2px;']").children
# puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children

@songs = doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children.count

puts @songs