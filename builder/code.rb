#実務未経験のバーテンダーがいた。。
#彼はカシスオレンジとマティーニの配分が同じと考えていた。。

#CassisOrangeとMartiniは作成インターフェイスの実装部分である具体ビルダ
class CassisOrange
    
    attr_accessor :cassis, :orange
    
    def initialize(cassis,orange)
        @cassis = cassis
        @orange = orange
    end
    
    def add_base(base)
        @cassis += base
    end
    
    def add_mixer(mixer)
        @orange += mixer
    end
    
end

class Martini
    
    attr_accessor :gin, :vermouth
    
    def initialize(gin,vermouth)
        @gin = gin
        @vermouth = vermouth
    end
    
    def add_base(base)
        @gin += base
    end
    
    def add_mixer(mixer)
        @vermouth += mixer
    end
    
end

#作成インターフェイスであるBuilder
class CocktailBuilder
    
    def initialize(class_name)
        @cocktail = class_name.new(0,0)
    end
    
    def add_base(base_amount)
        @cocktail.add_base(base_amount)
    end
    
    def add_mixer(mixer_amount)
        @cocktail.add_mixer(mixer_amount)
    end
    
    def result
        @cocktail
    end
    
end

#作業工程を定義するDirector
class Bartender
    
    def initialize(builder)
        @builder = builder
    end
    
    #ベース：ミキサーの割合、4:1でカクテルを作る
    def make
        @builder.add_base(40)
        @builder.add_mixer(10)
    end

end

#カシスオレンジを作る
builder1 = CocktailBuilder.new(CassisOrange)
bartender1 = Bartender.new(builder1)
bartender1.make
p builder1.result #カシスオレンジの分量を出力

#マティーニを作る
builder2 = CocktailBuilder.new(Martini)
bartender2 = Bartender.new(builder2)
bartender2.make
p builder2.result #マティーニの分量を出力