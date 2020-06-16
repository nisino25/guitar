class ArtistController < ApplicationController

    def songs
        @users = User.all
        
        require 'open-uri'
        require 'nokogiri'

        @url = current_user.artist_url
        doc = Nokogiri::HTML(open(@url))

        @artist = doc.xpath(" //h1 [@style= 'margin-top:7px;margin-bottom:5px;margin-left:2px;']").children.first
        @songs = doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/strong").children
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action normal-chord']/@href").children
    end

    def p
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=me'
        doc = Nokogiri::HTML(open(@url))

        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)

        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end

    def artist
        require 'open-uri'
        require 'nokogiri'

        @url = current_user.one_more
        doc = Nokogiri::HTML(open(@url))

        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    




    def a
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=a'
        doc = Nokogiri::HTML(open(@url))

        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)

        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def i
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=i'
        doc = Nokogiri::HTML(open(@url))

        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)

        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def u
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=u'
        doc = Nokogiri::HTML(open(@url))
        
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)

        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def e
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=e'
        doc = Nokogiri::HTML(open(@url))

        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def o
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=o'
        doc = Nokogiri::HTML(open(@url))

        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end


    def ka
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ka'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def ki
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ki'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def ku
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ku'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def ke
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ke'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def ko
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ko'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    

    def sa
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=sa'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def si
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=si'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def su
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=su'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def se
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=se'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def so
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=so'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end


    def ta
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ta'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def ti
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ti'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def tu
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=tu'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def te
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=te'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def to
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=to'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end


    def na
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=na'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def ni
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ni'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def nu
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=nu'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def ne
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ne'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def no
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=no'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end


    def ha
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ha'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def hi
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=hi'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def hu
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=hu'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def he
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=he'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def ho
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ho'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end


    def ma
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ma'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def mi
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=mi'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def mu
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=mu'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def me
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=me'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def mo
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=mo'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end


    def ya
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ya'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def yu
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=yu'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def yo
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=yo'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    

    def ra
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ra'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def ri
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ri'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def ru
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ru'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def re
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=re'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def ro
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=ro'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    

    def wa
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=wa'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    def nn
        require 'open-uri'
        require 'nokogiri'

        @url = 'https://www.ufret.jp/artistlist.php?data=nn'
        doc = Nokogiri::HTML(open(@url))
        num = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.count
        @links = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/@href").children.take(num -22).drop(1)
        all = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.count
        @contents = doc.xpath(" //a [@class= 'list-group-item list-group-item-action']/strong").children.take(all -22)
    end
    

end

