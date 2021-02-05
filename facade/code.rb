#とある大企業で働く受付嬢エリカ。
#美貌もさることながら複雑な内部フローの窓口業務もこなしていた。

class Visiter
    attr_reader :name, :company, :purpose
    
    def initialize(name,company,purpose)
        @name = name
        @company = company
        @purpose = purpose
    end
    
    def tell
        Receptionist.accept(self)
    end
end

#様々な受付業務を行うファサードまたの名をエリカ
class Receptionist
    
    def self.accept(obj)
        company = Confirmation.confirm_company(obj.company)
        purpose = Confirmation.confirm_purpose(obj.purpose)
        if company && purpose
            puts "#{obj.name}様お待ちしておりました。"
        else
            puts "承る事ができません。"
        end
    end
    
end

#内部処理を担当するモジュール
class Confirmation
    
    def self.confirm_company(company)
        return ["a","b","c"].include?(company)
    end
    
    def self.confirm_purpose(purpose)
        return purpose == "打ち合わせ"
    end
    
end

#取引先でもない、打ち合わせじゃないのでお引き取りをお願いされる
visiter1 = Visiter.new("佐藤","a","打ち合わせ")
visiter1.tell