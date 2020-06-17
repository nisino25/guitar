require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'
 
# スクレイピング先のURL
 
doc = Nokogiri::HTML(open('https://www.ufret.jp/artist.php?data=%E5%AE%87%E5%A4%9A%E7%94%B0%E3%83%92%E3%82%AB%E3%83%AB'))
 
#puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children
# puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/@href").children
# puts doc.xpath(" //h1 [@style= 'margin-top:7px;margin-bottom:5px;margin-left:2px;']").children
# puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children
 
puts doc.title.to_s.slice(0..(doc.title.index('-')))[0..-3]

