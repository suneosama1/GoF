#老舗の饅頭屋さんがありました。
#売り上げが下がってきていて饅頭以外の商品も売らなくてはなりませんでした。
#そんでもって生産に対して追加投資できないので既存の生産設備で作れる商品を探しました。
#そうだ！！肉まんを作ろう！！

require 'date'

#下記２つが生成するモノのプロダクトクラス
class Manjuu
    
    def initialize(id)
        @id = "饅頭#{id}"
        @date = Date.today
    end
    
    def sellby
        puts "#{@id}の賞味期限：#{@date.next_month(6)}"
    end
    
end

class NikuMan
    
    def initialize(id)
        @id = "肉まん#{id}"
        @date = Date.today
    end
    
    def sellby
        puts "#{@id}の賞味期限：#{@date.prev_month(6)}"
    end
    
end

#饅頭屋の生産ラインであるファクトリクラス
class Factory
    
    #下記メソッドがファクトリメソッドにあたる
    def initialize(number)
        @product = []
        number.times do |i|
            product = new_product(i)
            @product << product
        end
    end
    
    def ship_out
        @sell = @product.dup
        @product = []
        @sell
    end
    
end

#サブクラスで生成部分を切り出した饅頭Factory
class ManjuuFactory < Factory
   
   def new_product(id)
       Manjuu.new(id)
   end
   
end

#サブクラスで生成部分を切り出した肉まんFactory
class NikuManFactory < Factory
    
    def new_product(id)
        NikuMan.new(id)
    end
    
end

#饅頭を５個作って賞味期限も表示
factory = ManjuuFactory.new(5)
manjuu = factory.ship_out
manjuu.each {|product| product.sellby}

#肉まんを３０個作って賞味期限も表示
factory = NikuManFactory.new(30)
nikuman = factory.ship_out
nikuman.each {|product| product.sellby}