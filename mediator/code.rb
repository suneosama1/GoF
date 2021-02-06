#会員制のテレクラがありました。しかも電話ではなくメールでやりとりする形式。。。。

#メディエータのインターフェイス定義
class Mediator
    
    def initialize()
    end
    
    def create_member
    end
    
    def connection
    end
    
end

#メディエータのインターフェイス実装
class TelephoneClub < Mediator
    
    def initialize
        @member = Hash.new
    end
       
    def create_member(member)
        @member.store(member.get_name,member)
    end
    
    def connection(member,to,msg)
        puts "#{member.get_name}さんから#{to}さんへ#{msg}を送信しました。"
        @member[to].receive(msg)
    end
    
end

class Colleague
    
    def initialize(name)
        @name = name
    end
    
    def get_name
        return @name
    end
    
    def join_telephoneclub(mediator)
        @mediator = mediator
    end
    
end

class Member < Colleague
    
    def initialize(name)
        super(name)
    end
    
    def send(to,msg)
        @mediator.connection(self,to,msg)
    end
    
    def receive(msg)
        puts "#{@name}さんは#{msg}を受け取りました。"
    end
    
end

telephoneclub = TelephoneClub.new
member1 = Member.new("変態オヤジ")
member2 = Member.new("全身整形女")

member1.join_telephoneclub(telephoneclub)
member2.join_telephoneclub(telephoneclub)
telephoneclub.create_member(member1)
telephoneclub.create_member(member2)

member1.send("全身整形女","今、何してるの？")
member2.send("変態オヤジ","キモいんだよ、クソジジイ！")