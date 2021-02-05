#世界一従業員がうるさい会社がありました。
#ある時、タイムカードを打刻した時にあれもこれも表示してほしいと言われました。。。

require 'date'

#既存のクラス、コンポーネント
class TimeCard
    
    def start(name)
        puts "#{name}始業します！"
    end
    
    def leave(name)
        puts "#{name}退勤しました！"
    end
    
end

#デコレータの共通部分の抽象デコレータ
#各メソッドはコンポーネントに委譲している
class AbstractDecorator
    
    def initialize(obj)
        @obj = obj
    end
    
    def start(name)
        @obj.start(name)
    end
    
    def leave(name)
        @obj.leave(name)
    end
    
end

#下記の二つは追加したい機能の具体デコレーター
class TimeStampLeave < AbstractDecorator
    
    def leave(name)
        @obj.leave("#{Time.now} #{name}")
    end

end

class DaysOfWeeksLeave < AbstractDecorator
    
    def initialize(obj)
        super(obj)
        @days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]
    end
    
    def leave(name)
        @obj.leave("#{@days[Date.today.wday]} #{name}")
    end
    
end

#時刻、曜日を退勤時に出力
timecard = TimeStampLeave.new(DaysOfWeeksLeave.new(TimeCard.new))
timecard.leave("高橋")