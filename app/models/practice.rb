# URLにアクセスするためのライブラリの読み込み
require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'

# スクレイピング先のURL

doc = Nokogiri::HTML(open('https://www.ufret.jp/song.php?data=44896'))

#puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children
# puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/@href").children
# puts doc.xpath(" //h1 [@style= 'margin-top:7px;margin-bottom:5px;margin-left:2px;']").children
# puts doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children

doc =  doc.title.to_s.slice(0..(doc.title.index('/')))[0..-3]

@user = User.first
@user2 = User.find(2)
puts @user.songs.count