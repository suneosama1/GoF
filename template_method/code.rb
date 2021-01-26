class Animal
    
    def cry
        3.times do 
            voice
        end
    end
    
    def voice
        raise "何て泣けば良いかわからないよ！"
    end
end

class Dog < Animal
    def voice
        puts "わん！"
    end
end

class Cat < Animal
    def voice
        puts "にゃん！"
    end
end

class Mouse < Animal
    def bite
        puts "かじる！"
    end
end

Dog.new.cry
Cat.new.cry
Mouse.new.bite
Mouse.new.cry #サブクラスにメソッドを定義していないためエラー発生。