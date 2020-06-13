# URLにアクセスするためのライブラリの読み込み
require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'

# スクレイピング先のURL
doc = Nokogiri::HTML(open('https://www.ufret.jp/artist.php?data=%E5%9D%82%E5%8F%A3%E6%9C%89%E6%9C%9B'))

puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children
