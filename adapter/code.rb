#どんな動物でも声をかけたら鳴かせる事ができる飼育員がいた。。
#しかし猫だけは不可能だった。。。が。

#ターゲットとなるクラス
class Dog
    
    def initialize(name)
        @name = name
    end
    
    def cry
        puts "#{@name}だわん！"
    end
    
end

#同じくターゲットとなるクラス
class Bird
    
    def initialize(name)
        @name = name
    end
    
    def cry
        puts "#{@name}だちゅん！"
    end
    
end

#ターゲットのクラスを呼び出すクライアント
class Breeder
    
    def initialize(obj)
        @obj = obj
    end
    
    def hi
        @obj.cry
    end
    
end

#インターフェイスを変換したいアダプティ
class Cat
    
    def initialize(name)
        @name = name
    end
    
    def nyan
        puts "#{@name}だにゃん！"
    end
    
end

#Catクラスを飼育員の指示に従えるようにするアダプター
class CatAdapter
    
    def initialize(obj)
        @obj = obj
    end
    
    def cry
        @obj.nyan
    end
    
end

breeder1 = Breeder.new(Dog.new("ポチ"))
breeder1.hi
breeder2 = Breeder.new(Bird.new("トリッピ"))
breeder2.hi
#インターフェイスが異なるCatへ呼びかける
breeder3 = Breeder.new(CatAdapter.new(Cat.new("タマ")))
breeder3.hi