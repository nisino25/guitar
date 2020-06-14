# URLにアクセスするためのライブラリの読み込み
require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'

# スクレイピング先のURL
doc = Nokogiri::HTML(open('https://www.ufret.jp/artistlist.php?data=me'))

#puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children
# puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/@href").children
# puts doc.xpath(" //h1 [@style= 'margin-top:7px;margin-bottom:5px;margin-left:2px;']").children
# puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children
all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").count
puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.to_s
