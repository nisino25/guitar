# URLにアクセスするためのライブラリの読み込み
require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'

# スクレイピング先のURL
doc = Nokogiri::HTML(open('https://www.ufret.jp/artist.php?data=RADWIMPS'))


p doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord'] //strong ") .children
