#銃を何でも使える優秀な兵士がいました。
#瞬時に銃を切り替えても扱えるのでガンマスターと呼ばれていました。

#様々な銃を扱うソルジャークラス、コンテクスト
class Soldier
    
    def initialize(gun)
        @gun = gun
    end
    
    def trigger
        @gun.shot
    end
    
end

#抽象ストラテジ、ガンクラス
class Gun
    
    def shot
        raise "これじゃ撃てないぜ！"
    end
    
end

#具象ストラテジ、ハンドガンクラス
class Handgun < Gun
    
    def shot
        puts "パン！"
    end
    
end

#具象ストラテジ、マシンガンクラス
class MachineGun < Gun
    
    def shot
        puts "ダダダダダン！"
    end
    
end

soldier1 = Soldier.new(Handgun.new)
soldier1.trigger
soldier1 = Soldier.new(MachineGun.new)
soldier1.trigger