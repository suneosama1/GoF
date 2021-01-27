{"changed":true,"filter":false,"title":"code.rb","tooltip":"/builder/code.rb","value":"#実務未経験のバーテンダーがいた。。\n#彼はカシスオレンジとマティーニのベースとミキサーの分量の比率が同じと考えていた。。\n\n#CassisOrangeとMartiniは作成インターフェイスの実装部分である具体ビルダ\nclass CassisOrange\n    \n    attr_accessor :cassis, :orange\n    \n    def initialize(cassis,orange)\n        @cassis = cassis\n        @orange = orange\n    end\n    \n    def add_base(base)\n        @cassis += base\n    end\n    \n    def add_mixer(mixer)\n        @orange += mixer\n    end\n    \nend\n\nclass Martini\n    \n    attr_accessor :gin, :vermouth\n    \n    def initialize(gin,vermouth)\n        @gin = gin\n        @vermouth = vermouth\n    end\n    \n    def add_base(base)\n        @gin += base\n    end\n    \n    def add_mixer(mixer)\n        @vermouth += mixer\n    end\n    \nend\n\n#作成インターフェイスであるBuilder\nclass CocktailBuilder\n    \n    def initialize(class_name)\n        @cocktail = class_name.new(0,0)\n    end\n    \n    def add_base(base_amount)\n        @cocktail.add_base(base_amount)\n    end\n    \n    def add_mixer(mixer_amount)\n        @cocktail.add_mixer(mixer_amount)\n    end\n    \n    def result\n        @cocktail\n    end\n    \nend\n\n#作業工程を定義するDirector\nclass Bartender\n    \n    def initialize(builder)\n        @builder = builder\n    end\n    \n    #ベース：ミキサーの割合、4:1でカクテルを作る\n    def make\n        @builder.add_base(40)\n        @builder.add_mixer(10)\n    end\n\nend\n\n#カシスオレンジを作る\nbuilder1 = CocktailBuilder.new(CassisOrange)\nbartender1 = Bartender.new(builder1)\nbartender1.make\np builder1.result #カシスオレンジの分量を出力\n\n#マティーニを作る\nbuilder2 = CocktailBuilder.new(Martini)\nbartender2 = Bartender.new(builder2)\nbartender2.make\np builder2.result #マティーニの分量を出力","undoManager":{"mark":95,"position":100,"stack":[[{"start":{"row":61,"column":10},"end":{"row":61,"column":11},"action":"insert","lines":["D"],"id":326},{"start":{"row":61,"column":11},"end":{"row":61,"column":12},"action":"insert","lines":["i"]},{"start":{"row":61,"column":12},"end":{"row":61,"column":13},"action":"insert","lines":["r"]},{"start":{"row":61,"column":13},"end":{"row":61,"column":14},"action":"insert","lines":["e"]},{"start":{"row":61,"column":14},"end":{"row":61,"column":15},"action":"insert","lines":["c"]},{"start":{"row":61,"column":15},"end":{"row":61,"column":16},"action":"insert","lines":["t"]},{"start":{"row":61,"column":16},"end":{"row":61,"column":17},"action":"insert","lines":["o"]},{"start":{"row":61,"column":17},"end":{"row":61,"column":18},"action":"insert","lines":["r"]}],[{"start":{"row":40,"column":0},"end":{"row":41,"column":0},"action":"insert","lines":["",""],"id":327}],[{"start":{"row":41,"column":0},"end":{"row":41,"column":1},"action":"insert","lines":["#"],"id":328}],[{"start":{"row":41,"column":1},"end":{"row":41,"column":3},"action":"insert","lines":["表現"],"id":329},{"start":{"row":41,"column":3},"end":{"row":41,"column":5},"action":"insert","lines":["形式"]}],[{"start":{"row":41,"column":4},"end":{"row":41,"column":5},"action":"remove","lines":["式"],"id":330},{"start":{"row":41,"column":3},"end":{"row":41,"column":4},"action":"remove","lines":["形"]},{"start":{"row":41,"column":2},"end":{"row":41,"column":3},"action":"remove","lines":["現"]},{"start":{"row":41,"column":1},"end":{"row":41,"column":2},"action":"remove","lines":["表"]}],[{"start":{"row":41,"column":1},"end":{"row":41,"column":3},"action":"insert","lines":["作成"],"id":331}],[{"start":{"row":41,"column":3},"end":{"row":41,"column":11},"action":"insert","lines":["インターフェイス"],"id":332},{"start":{"row":41,"column":11},"end":{"row":41,"column":14},"action":"insert","lines":["である"]}],[{"start":{"row":41,"column":14},"end":{"row":41,"column":15},"action":"insert","lines":["B"],"id":333},{"start":{"row":41,"column":15},"end":{"row":41,"column":16},"action":"insert","lines":["u"]},{"start":{"row":41,"column":16},"end":{"row":41,"column":17},"action":"insert","lines":["i"]},{"start":{"row":41,"column":17},"end":{"row":41,"column":18},"action":"insert","lines":["l"]},{"start":{"row":41,"column":18},"end":{"row":41,"column":19},"action":"insert","lines":["d"]},{"start":{"row":41,"column":19},"end":{"row":41,"column":20},"action":"insert","lines":["e"]},{"start":{"row":41,"column":20},"end":{"row":41,"column":21},"action":"insert","lines":["r"]}],[{"start":{"row":2,"column":0},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":334}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":1},"action":"insert","lines":["g"],"id":335},{"start":{"row":3,"column":1},"end":{"row":3,"column":2},"action":"insert","lines":["a"]}],[{"start":{"row":3,"column":1},"end":{"row":3,"column":2},"action":"remove","lines":["a"],"id":336},{"start":{"row":3,"column":0},"end":{"row":3,"column":1},"action":"remove","lines":["g"]}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":1},"action":"insert","lines":["#"],"id":337}],[{"start":{"row":3,"column":1},"end":{"row":3,"column":3},"action":"insert","lines":["具体"],"id":338},{"start":{"row":3,"column":3},"end":{"row":3,"column":6},"action":"insert","lines":["クラス"]}],[{"start":{"row":3,"column":5},"end":{"row":3,"column":6},"action":"remove","lines":["ス"],"id":339},{"start":{"row":3,"column":4},"end":{"row":3,"column":5},"action":"remove","lines":["ラ"]},{"start":{"row":3,"column":3},"end":{"row":3,"column":4},"action":"remove","lines":["ク"]},{"start":{"row":3,"column":2},"end":{"row":3,"column":3},"action":"remove","lines":["体"]},{"start":{"row":3,"column":1},"end":{"row":3,"column":2},"action":"remove","lines":["具"]}],[{"start":{"row":3,"column":1},"end":{"row":3,"column":3},"action":"insert","lines":["具体"],"id":340},{"start":{"row":3,"column":3},"end":{"row":3,"column":6},"action":"insert","lines":["ビルダ"]}],[{"start":{"row":3,"column":1},"end":{"row":3,"column":3},"action":"insert","lines":["作成"],"id":341},{"start":{"row":3,"column":3},"end":{"row":3,"column":7},"action":"insert","lines":["インター"]}],[{"start":{"row":3,"column":7},"end":{"row":3,"column":11},"action":"insert","lines":["フェイス"],"id":342},{"start":{"row":3,"column":11},"end":{"row":3,"column":12},"action":"insert","lines":["の"]}],[{"start":{"row":3,"column":12},"end":{"row":3,"column":14},"action":"insert","lines":["次走"],"id":343}],[{"start":{"row":3,"column":13},"end":{"row":3,"column":14},"action":"remove","lines":["走"],"id":344},{"start":{"row":3,"column":12},"end":{"row":3,"column":13},"action":"remove","lines":["次"]}],[{"start":{"row":3,"column":12},"end":{"row":3,"column":14},"action":"insert","lines":["実装"],"id":345},{"start":{"row":3,"column":14},"end":{"row":3,"column":16},"action":"insert","lines":["部分"]}],[{"start":{"row":3,"column":16},"end":{"row":3,"column":19},"action":"insert","lines":["である"],"id":346}],[{"start":{"row":3,"column":1},"end":{"row":3,"column":2},"action":"insert","lines":["C"],"id":347},{"start":{"row":3,"column":2},"end":{"row":3,"column":3},"action":"insert","lines":["a"]},{"start":{"row":3,"column":3},"end":{"row":3,"column":4},"action":"insert","lines":["s"]},{"start":{"row":3,"column":4},"end":{"row":3,"column":5},"action":"insert","lines":["s"]},{"start":{"row":3,"column":5},"end":{"row":3,"column":6},"action":"insert","lines":["i"]},{"start":{"row":3,"column":6},"end":{"row":3,"column":7},"action":"insert","lines":["s"]},{"start":{"row":3,"column":7},"end":{"row":3,"column":8},"action":"insert","lines":["O"]}],[{"start":{"row":3,"column":8},"end":{"row":3,"column":9},"action":"insert","lines":["r"],"id":348},{"start":{"row":3,"column":9},"end":{"row":3,"column":10},"action":"insert","lines":["a"]},{"start":{"row":3,"column":10},"end":{"row":3,"column":11},"action":"insert","lines":["n"]},{"start":{"row":3,"column":11},"end":{"row":3,"column":12},"action":"insert","lines":["g"]},{"start":{"row":3,"column":12},"end":{"row":3,"column":13},"action":"insert","lines":["e"]},{"start":{"row":3,"column":13},"end":{"row":3,"column":14},"action":"insert","lines":["と"]}],[{"start":{"row":3,"column":14},"end":{"row":3,"column":15},"action":"insert","lines":["M"],"id":349},{"start":{"row":3,"column":15},"end":{"row":3,"column":16},"action":"insert","lines":["a"]},{"start":{"row":3,"column":16},"end":{"row":3,"column":17},"action":"insert","lines":["r"]},{"start":{"row":3,"column":17},"end":{"row":3,"column":18},"action":"insert","lines":["t"]},{"start":{"row":3,"column":18},"end":{"row":3,"column":19},"action":"insert","lines":["i"]},{"start":{"row":3,"column":19},"end":{"row":3,"column":20},"action":"insert","lines":["n"]},{"start":{"row":3,"column":20},"end":{"row":3,"column":21},"action":"insert","lines":["i"]}],[{"start":{"row":3,"column":21},"end":{"row":3,"column":22},"action":"insert","lines":["は"],"id":350}],[{"start":{"row":69,"column":4},"end":{"row":70,"column":0},"action":"insert","lines":["",""],"id":351},{"start":{"row":70,"column":0},"end":{"row":70,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":70,"column":4},"end":{"row":70,"column":5},"action":"insert","lines":["#"],"id":352},{"start":{"row":70,"column":5},"end":{"row":70,"column":8},"action":"insert","lines":["ベース"]}],[{"start":{"row":70,"column":8},"end":{"row":70,"column":9},"action":"insert","lines":["："],"id":353}],[{"start":{"row":70,"column":9},"end":{"row":70,"column":13},"action":"insert","lines":["ミキサー"],"id":354},{"start":{"row":70,"column":13},"end":{"row":70,"column":14},"action":"insert","lines":["の"]}],[{"start":{"row":70,"column":14},"end":{"row":70,"column":16},"action":"insert","lines":["割合"],"id":355},{"start":{"row":70,"column":16},"end":{"row":70,"column":17},"action":"insert","lines":["、"]}],[{"start":{"row":70,"column":17},"end":{"row":70,"column":18},"action":"insert","lines":["4"],"id":356},{"start":{"row":70,"column":18},"end":{"row":70,"column":19},"action":"insert","lines":[":"]},{"start":{"row":70,"column":19},"end":{"row":70,"column":20},"action":"insert","lines":["1"]}],[{"start":{"row":70,"column":20},"end":{"row":70,"column":21},"action":"insert","lines":["で"],"id":357}],[{"start":{"row":70,"column":21},"end":{"row":70,"column":25},"action":"insert","lines":["カクテル"],"id":358},{"start":{"row":70,"column":25},"end":{"row":70,"column":26},"action":"insert","lines":["を"]},{"start":{"row":70,"column":26},"end":{"row":70,"column":28},"action":"insert","lines":["作る"]}],[{"start":{"row":80,"column":18},"end":{"row":80,"column":19},"action":"remove","lines":["r"],"id":359},{"start":{"row":80,"column":17},"end":{"row":80,"column":18},"action":"remove","lines":["o"]},{"start":{"row":80,"column":16},"end":{"row":80,"column":17},"action":"remove","lines":["t"]},{"start":{"row":80,"column":15},"end":{"row":80,"column":16},"action":"remove","lines":["c"]},{"start":{"row":80,"column":14},"end":{"row":80,"column":15},"action":"remove","lines":["r"]},{"start":{"row":80,"column":13},"end":{"row":80,"column":14},"action":"remove","lines":["i"]},{"start":{"row":80,"column":12},"end":{"row":80,"column":13},"action":"remove","lines":["D"]}],[{"start":{"row":80,"column":12},"end":{"row":80,"column":13},"action":"insert","lines":["B"],"id":360},{"start":{"row":80,"column":13},"end":{"row":80,"column":14},"action":"insert","lines":["a"]},{"start":{"row":80,"column":14},"end":{"row":80,"column":15},"action":"insert","lines":["r"]},{"start":{"row":80,"column":15},"end":{"row":80,"column":16},"action":"insert","lines":["t"]},{"start":{"row":80,"column":16},"end":{"row":80,"column":17},"action":"insert","lines":["e"]},{"start":{"row":80,"column":17},"end":{"row":80,"column":18},"action":"insert","lines":["n"]},{"start":{"row":80,"column":18},"end":{"row":80,"column":19},"action":"insert","lines":["d"]},{"start":{"row":80,"column":19},"end":{"row":80,"column":20},"action":"insert","lines":["e"]},{"start":{"row":80,"column":20},"end":{"row":80,"column":21},"action":"insert","lines":["r"]}],[{"start":{"row":80,"column":30},"end":{"row":81,"column":0},"action":"insert","lines":["",""],"id":361}],[{"start":{"row":81,"column":0},"end":{"row":81,"column":1},"action":"insert","lines":["b"],"id":362},{"start":{"row":81,"column":1},"end":{"row":81,"column":2},"action":"insert","lines":["a"]},{"start":{"row":81,"column":2},"end":{"row":81,"column":3},"action":"insert","lines":["r"]},{"start":{"row":81,"column":3},"end":{"row":81,"column":4},"action":"insert","lines":["t"]},{"start":{"row":81,"column":4},"end":{"row":81,"column":5},"action":"insert","lines":["e"]},{"start":{"row":81,"column":5},"end":{"row":81,"column":6},"action":"insert","lines":["n"]},{"start":{"row":81,"column":6},"end":{"row":81,"column":7},"action":"insert","lines":["d"]},{"start":{"row":81,"column":7},"end":{"row":81,"column":8},"action":"insert","lines":["e"]},{"start":{"row":81,"column":8},"end":{"row":81,"column":9},"action":"insert","lines":["r"]},{"start":{"row":81,"column":9},"end":{"row":81,"column":10},"action":"insert","lines":["."]},{"start":{"row":81,"column":10},"end":{"row":81,"column":11},"action":"insert","lines":["m"]},{"start":{"row":81,"column":11},"end":{"row":81,"column":12},"action":"insert","lines":["a"]},{"start":{"row":81,"column":12},"end":{"row":81,"column":13},"action":"insert","lines":["k"]}],[{"start":{"row":81,"column":13},"end":{"row":81,"column":14},"action":"insert","lines":["e"],"id":363}],[{"start":{"row":81,"column":14},"end":{"row":82,"column":0},"action":"insert","lines":["",""],"id":364}],[{"start":{"row":82,"column":0},"end":{"row":82,"column":1},"action":"insert","lines":["p"],"id":365},{"start":{"row":82,"column":1},"end":{"row":82,"column":2},"action":"insert","lines":["u"]},{"start":{"row":82,"column":2},"end":{"row":82,"column":3},"action":"insert","lines":["t"]},{"start":{"row":82,"column":3},"end":{"row":82,"column":4},"action":"insert","lines":["s"]}],[{"start":{"row":82,"column":4},"end":{"row":82,"column":5},"action":"insert","lines":[" "],"id":366}],[{"start":{"row":82,"column":5},"end":{"row":82,"column":6},"action":"insert","lines":["b"],"id":367},{"start":{"row":82,"column":6},"end":{"row":82,"column":7},"action":"insert","lines":["a"]},{"start":{"row":82,"column":7},"end":{"row":82,"column":8},"action":"insert","lines":["r"]}],[{"start":{"row":82,"column":7},"end":{"row":82,"column":8},"action":"remove","lines":["r"],"id":368},{"start":{"row":82,"column":6},"end":{"row":82,"column":7},"action":"remove","lines":["a"]},{"start":{"row":82,"column":5},"end":{"row":82,"column":6},"action":"remove","lines":["b"]}],[{"start":{"row":82,"column":5},"end":{"row":82,"column":6},"action":"insert","lines":["b"],"id":369},{"start":{"row":82,"column":6},"end":{"row":82,"column":7},"action":"insert","lines":["u"]},{"start":{"row":82,"column":7},"end":{"row":82,"column":8},"action":"insert","lines":["i"]},{"start":{"row":82,"column":8},"end":{"row":82,"column":9},"action":"insert","lines":["l"]},{"start":{"row":82,"column":9},"end":{"row":82,"column":10},"action":"insert","lines":["d"]},{"start":{"row":82,"column":10},"end":{"row":82,"column":11},"action":"insert","lines":["e"]},{"start":{"row":82,"column":11},"end":{"row":82,"column":12},"action":"insert","lines":["r"]},{"start":{"row":82,"column":12},"end":{"row":82,"column":13},"action":"insert","lines":["."]}],[{"start":{"row":82,"column":13},"end":{"row":82,"column":14},"action":"insert","lines":["r"],"id":370},{"start":{"row":82,"column":14},"end":{"row":82,"column":15},"action":"insert","lines":["e"]},{"start":{"row":82,"column":15},"end":{"row":82,"column":16},"action":"insert","lines":["s"]},{"start":{"row":82,"column":16},"end":{"row":82,"column":17},"action":"insert","lines":["u"]},{"start":{"row":82,"column":17},"end":{"row":82,"column":18},"action":"insert","lines":["l"]},{"start":{"row":82,"column":18},"end":{"row":82,"column":19},"action":"insert","lines":["t"]}],[{"start":{"row":82,"column":19},"end":{"row":82,"column":20},"action":"insert","lines":[" "],"id":371},{"start":{"row":82,"column":20},"end":{"row":82,"column":21},"action":"insert","lines":["#"]}],[{"start":{"row":82,"column":21},"end":{"row":82,"column":24},"action":"insert","lines":["カシス"],"id":372},{"start":{"row":82,"column":24},"end":{"row":82,"column":29},"action":"insert","lines":["オレンジの"]}],[{"start":{"row":82,"column":29},"end":{"row":82,"column":31},"action":"insert","lines":["分量"],"id":373},{"start":{"row":82,"column":31},"end":{"row":82,"column":32},"action":"insert","lines":["が"]}],[{"start":{"row":82,"column":31},"end":{"row":82,"column":32},"action":"remove","lines":["が"],"id":374}],[{"start":{"row":82,"column":31},"end":{"row":82,"column":32},"action":"insert","lines":["を"],"id":375},{"start":{"row":82,"column":32},"end":{"row":82,"column":34},"action":"insert","lines":["出力"]}],[{"start":{"row":82,"column":34},"end":{"row":83,"column":0},"action":"insert","lines":["",""],"id":376},{"start":{"row":83,"column":0},"end":{"row":84,"column":0},"action":"insert","lines":["",""]},{"start":{"row":84,"column":0},"end":{"row":84,"column":1},"action":"insert","lines":["#"]}],[{"start":{"row":84,"column":1},"end":{"row":84,"column":6},"action":"insert","lines":["マティーニ"],"id":377},{"start":{"row":84,"column":6},"end":{"row":84,"column":7},"action":"insert","lines":["を"]},{"start":{"row":84,"column":7},"end":{"row":84,"column":9},"action":"insert","lines":["作る"]}],[{"start":{"row":84,"column":9},"end":{"row":85,"column":0},"action":"insert","lines":["",""],"id":378},{"start":{"row":85,"column":0},"end":{"row":85,"column":1},"action":"insert","lines":["b"]},{"start":{"row":85,"column":1},"end":{"row":85,"column":2},"action":"insert","lines":["u"]},{"start":{"row":85,"column":2},"end":{"row":85,"column":3},"action":"insert","lines":["i"]},{"start":{"row":85,"column":3},"end":{"row":85,"column":4},"action":"insert","lines":["l"]},{"start":{"row":85,"column":4},"end":{"row":85,"column":5},"action":"insert","lines":["d"]},{"start":{"row":85,"column":5},"end":{"row":85,"column":6},"action":"insert","lines":["e"]},{"start":{"row":85,"column":6},"end":{"row":85,"column":7},"action":"insert","lines":["r"]}],[{"start":{"row":79,"column":7},"end":{"row":79,"column":8},"action":"insert","lines":["1"],"id":379}],[{"start":{"row":80,"column":9},"end":{"row":80,"column":10},"action":"insert","lines":["2"],"id":380}],[{"start":{"row":81,"column":9},"end":{"row":81,"column":10},"action":"insert","lines":["2"],"id":381}],[{"start":{"row":80,"column":30},"end":{"row":80,"column":31},"action":"insert","lines":["1"],"id":382}],[{"start":{"row":80,"column":9},"end":{"row":80,"column":10},"action":"remove","lines":["2"],"id":383}],[{"start":{"row":80,"column":9},"end":{"row":80,"column":10},"action":"insert","lines":["1"],"id":384}],[{"start":{"row":81,"column":9},"end":{"row":81,"column":10},"action":"remove","lines":["2"],"id":385}],[{"start":{"row":81,"column":9},"end":{"row":81,"column":10},"action":"insert","lines":["1"],"id":386}],[{"start":{"row":82,"column":12},"end":{"row":82,"column":13},"action":"insert","lines":["1"],"id":387}],[{"start":{"row":85,"column":7},"end":{"row":85,"column":8},"action":"insert","lines":["2"],"id":388},{"start":{"row":85,"column":8},"end":{"row":85,"column":9},"action":"insert","lines":["."]}],[{"start":{"row":85,"column":8},"end":{"row":85,"column":9},"action":"remove","lines":["."],"id":389}],[{"start":{"row":85,"column":8},"end":{"row":85,"column":9},"action":"insert","lines":[" "],"id":390},{"start":{"row":85,"column":9},"end":{"row":85,"column":10},"action":"insert","lines":["="]}],[{"start":{"row":85,"column":10},"end":{"row":85,"column":11},"action":"insert","lines":[" "],"id":391},{"start":{"row":85,"column":11},"end":{"row":85,"column":12},"action":"insert","lines":["C"]},{"start":{"row":85,"column":12},"end":{"row":85,"column":13},"action":"insert","lines":["o"]},{"start":{"row":85,"column":13},"end":{"row":85,"column":14},"action":"insert","lines":["c"]},{"start":{"row":85,"column":14},"end":{"row":85,"column":15},"action":"insert","lines":["k"]},{"start":{"row":85,"column":15},"end":{"row":85,"column":16},"action":"insert","lines":["t"]},{"start":{"row":85,"column":16},"end":{"row":85,"column":17},"action":"insert","lines":["a"]}],[{"start":{"row":85,"column":17},"end":{"row":85,"column":18},"action":"insert","lines":["i"],"id":392},{"start":{"row":85,"column":18},"end":{"row":85,"column":19},"action":"insert","lines":["l"]},{"start":{"row":85,"column":19},"end":{"row":85,"column":20},"action":"insert","lines":["B"]},{"start":{"row":85,"column":20},"end":{"row":85,"column":21},"action":"insert","lines":["u"]},{"start":{"row":85,"column":21},"end":{"row":85,"column":22},"action":"insert","lines":["i"]},{"start":{"row":85,"column":22},"end":{"row":85,"column":23},"action":"insert","lines":["l"]},{"start":{"row":85,"column":23},"end":{"row":85,"column":24},"action":"insert","lines":["e"]}],[{"start":{"row":85,"column":23},"end":{"row":85,"column":24},"action":"remove","lines":["e"],"id":393}],[{"start":{"row":85,"column":23},"end":{"row":85,"column":24},"action":"insert","lines":["d"],"id":394},{"start":{"row":85,"column":24},"end":{"row":85,"column":25},"action":"insert","lines":["e"]},{"start":{"row":85,"column":25},"end":{"row":85,"column":26},"action":"insert","lines":["r"]},{"start":{"row":85,"column":26},"end":{"row":85,"column":27},"action":"insert","lines":["."]},{"start":{"row":85,"column":27},"end":{"row":85,"column":28},"action":"insert","lines":["n"]},{"start":{"row":85,"column":28},"end":{"row":85,"column":29},"action":"insert","lines":["e"]},{"start":{"row":85,"column":29},"end":{"row":85,"column":30},"action":"insert","lines":["w"]}],[{"start":{"row":85,"column":30},"end":{"row":85,"column":32},"action":"insert","lines":["()"],"id":395}],[{"start":{"row":85,"column":31},"end":{"row":85,"column":32},"action":"insert","lines":["M"],"id":396},{"start":{"row":85,"column":32},"end":{"row":85,"column":33},"action":"insert","lines":["a"]},{"start":{"row":85,"column":33},"end":{"row":85,"column":34},"action":"insert","lines":["r"]},{"start":{"row":85,"column":34},"end":{"row":85,"column":35},"action":"insert","lines":["t"]},{"start":{"row":85,"column":35},"end":{"row":85,"column":36},"action":"insert","lines":["i"]},{"start":{"row":85,"column":36},"end":{"row":85,"column":37},"action":"insert","lines":["n"]},{"start":{"row":85,"column":37},"end":{"row":85,"column":38},"action":"insert","lines":["i"]}],[{"start":{"row":85,"column":39},"end":{"row":86,"column":0},"action":"insert","lines":["",""],"id":397},{"start":{"row":86,"column":0},"end":{"row":86,"column":1},"action":"insert","lines":["b"]},{"start":{"row":86,"column":1},"end":{"row":86,"column":2},"action":"insert","lines":["u"]}],[{"start":{"row":86,"column":1},"end":{"row":86,"column":2},"action":"remove","lines":["u"],"id":398}],[{"start":{"row":86,"column":1},"end":{"row":86,"column":2},"action":"insert","lines":["a"],"id":399},{"start":{"row":86,"column":2},"end":{"row":86,"column":3},"action":"insert","lines":["r"]},{"start":{"row":86,"column":3},"end":{"row":86,"column":4},"action":"insert","lines":["t"]},{"start":{"row":86,"column":4},"end":{"row":86,"column":5},"action":"insert","lines":["e"]},{"start":{"row":86,"column":5},"end":{"row":86,"column":6},"action":"insert","lines":["n"]},{"start":{"row":86,"column":6},"end":{"row":86,"column":7},"action":"insert","lines":["d"]},{"start":{"row":86,"column":7},"end":{"row":86,"column":8},"action":"insert","lines":["e"]},{"start":{"row":86,"column":8},"end":{"row":86,"column":9},"action":"insert","lines":["r"]},{"start":{"row":86,"column":9},"end":{"row":86,"column":10},"action":"insert","lines":["2"]}],[{"start":{"row":86,"column":10},"end":{"row":86,"column":11},"action":"insert","lines":[" "],"id":400},{"start":{"row":86,"column":11},"end":{"row":86,"column":12},"action":"insert","lines":["="]}],[{"start":{"row":86,"column":12},"end":{"row":86,"column":13},"action":"insert","lines":[" "],"id":401},{"start":{"row":86,"column":13},"end":{"row":86,"column":14},"action":"insert","lines":["B"]},{"start":{"row":86,"column":14},"end":{"row":86,"column":15},"action":"insert","lines":["a"]},{"start":{"row":86,"column":15},"end":{"row":86,"column":16},"action":"insert","lines":["r"]}],[{"start":{"row":86,"column":16},"end":{"row":86,"column":17},"action":"insert","lines":["t"],"id":402},{"start":{"row":86,"column":17},"end":{"row":86,"column":18},"action":"insert","lines":["e"]},{"start":{"row":86,"column":18},"end":{"row":86,"column":19},"action":"insert","lines":["n"]},{"start":{"row":86,"column":19},"end":{"row":86,"column":20},"action":"insert","lines":["d"]},{"start":{"row":86,"column":20},"end":{"row":86,"column":21},"action":"insert","lines":["e"]},{"start":{"row":86,"column":21},"end":{"row":86,"column":22},"action":"insert","lines":["r"]}],[{"start":{"row":86,"column":22},"end":{"row":86,"column":24},"action":"insert","lines":["()"],"id":403}],[{"start":{"row":86,"column":23},"end":{"row":86,"column":24},"action":"insert","lines":["b"],"id":404},{"start":{"row":86,"column":24},"end":{"row":86,"column":25},"action":"insert","lines":["u"]},{"start":{"row":86,"column":25},"end":{"row":86,"column":26},"action":"insert","lines":["i"]},{"start":{"row":86,"column":26},"end":{"row":86,"column":27},"action":"insert","lines":["l"]},{"start":{"row":86,"column":27},"end":{"row":86,"column":28},"action":"insert","lines":["d"]},{"start":{"row":86,"column":28},"end":{"row":86,"column":29},"action":"insert","lines":["e"]},{"start":{"row":86,"column":29},"end":{"row":86,"column":30},"action":"insert","lines":["r"]},{"start":{"row":86,"column":30},"end":{"row":86,"column":31},"action":"insert","lines":["2"]}],[{"start":{"row":86,"column":32},"end":{"row":87,"column":0},"action":"insert","lines":["",""],"id":405},{"start":{"row":87,"column":0},"end":{"row":87,"column":1},"action":"insert","lines":["b"]},{"start":{"row":87,"column":1},"end":{"row":87,"column":2},"action":"insert","lines":["a"]},{"start":{"row":87,"column":2},"end":{"row":87,"column":3},"action":"insert","lines":["r"]}],[{"start":{"row":87,"column":3},"end":{"row":87,"column":4},"action":"insert","lines":["t"],"id":406},{"start":{"row":87,"column":4},"end":{"row":87,"column":5},"action":"insert","lines":["e"]},{"start":{"row":87,"column":5},"end":{"row":87,"column":6},"action":"insert","lines":["n"]},{"start":{"row":87,"column":6},"end":{"row":87,"column":7},"action":"insert","lines":["d"]},{"start":{"row":87,"column":7},"end":{"row":87,"column":8},"action":"insert","lines":["e"]},{"start":{"row":87,"column":8},"end":{"row":87,"column":9},"action":"insert","lines":["r"]},{"start":{"row":87,"column":9},"end":{"row":87,"column":10},"action":"insert","lines":["2"]},{"start":{"row":87,"column":10},"end":{"row":87,"column":11},"action":"insert","lines":["."]},{"start":{"row":87,"column":11},"end":{"row":87,"column":12},"action":"insert","lines":["m"]},{"start":{"row":87,"column":12},"end":{"row":87,"column":13},"action":"insert","lines":["a"]},{"start":{"row":87,"column":13},"end":{"row":87,"column":14},"action":"insert","lines":["k"]}],[{"start":{"row":87,"column":14},"end":{"row":87,"column":15},"action":"insert","lines":["e"],"id":407}],[{"start":{"row":87,"column":15},"end":{"row":88,"column":0},"action":"insert","lines":["",""],"id":408},{"start":{"row":88,"column":0},"end":{"row":88,"column":1},"action":"insert","lines":["p"]},{"start":{"row":88,"column":1},"end":{"row":88,"column":2},"action":"insert","lines":["u"]},{"start":{"row":88,"column":2},"end":{"row":88,"column":3},"action":"insert","lines":["t"]},{"start":{"row":88,"column":3},"end":{"row":88,"column":4},"action":"insert","lines":["s"]}],[{"start":{"row":88,"column":4},"end":{"row":88,"column":5},"action":"insert","lines":[" "],"id":409}],[{"start":{"row":88,"column":5},"end":{"row":88,"column":6},"action":"insert","lines":["b"],"id":410},{"start":{"row":88,"column":6},"end":{"row":88,"column":7},"action":"insert","lines":["u"]},{"start":{"row":88,"column":7},"end":{"row":88,"column":8},"action":"insert","lines":["i"]},{"start":{"row":88,"column":8},"end":{"row":88,"column":9},"action":"insert","lines":["o"]}],[{"start":{"row":88,"column":8},"end":{"row":88,"column":9},"action":"remove","lines":["o"],"id":411}],[{"start":{"row":88,"column":8},"end":{"row":88,"column":9},"action":"insert","lines":["l"],"id":412},{"start":{"row":88,"column":9},"end":{"row":88,"column":10},"action":"insert","lines":["d"]},{"start":{"row":88,"column":10},"end":{"row":88,"column":11},"action":"insert","lines":["e"]},{"start":{"row":88,"column":11},"end":{"row":88,"column":12},"action":"insert","lines":["r"]},{"start":{"row":88,"column":12},"end":{"row":88,"column":13},"action":"insert","lines":["2"]}],[{"start":{"row":88,"column":13},"end":{"row":88,"column":14},"action":"insert","lines":["."],"id":413},{"start":{"row":88,"column":14},"end":{"row":88,"column":15},"action":"insert","lines":["r"]},{"start":{"row":88,"column":15},"end":{"row":88,"column":16},"action":"insert","lines":["e"]},{"start":{"row":88,"column":16},"end":{"row":88,"column":17},"action":"insert","lines":["s"]},{"start":{"row":88,"column":17},"end":{"row":88,"column":18},"action":"insert","lines":["u"]},{"start":{"row":88,"column":18},"end":{"row":88,"column":19},"action":"insert","lines":["l"]},{"start":{"row":88,"column":19},"end":{"row":88,"column":20},"action":"insert","lines":["t"]}],[{"start":{"row":88,"column":20},"end":{"row":88,"column":21},"action":"insert","lines":[" "],"id":414},{"start":{"row":88,"column":21},"end":{"row":88,"column":22},"action":"insert","lines":["#"]}],[{"start":{"row":88,"column":22},"end":{"row":88,"column":27},"action":"insert","lines":["マティーニ"],"id":415},{"start":{"row":88,"column":27},"end":{"row":88,"column":28},"action":"insert","lines":["の"]},{"start":{"row":88,"column":28},"end":{"row":88,"column":30},"action":"insert","lines":["分量"]}],[{"start":{"row":88,"column":30},"end":{"row":88,"column":31},"action":"insert","lines":["を"],"id":416}],[{"start":{"row":88,"column":31},"end":{"row":88,"column":33},"action":"insert","lines":["出力"],"id":417}],[{"start":{"row":80,"column":22},"end":{"row":80,"column":23},"action":"insert","lines":["."],"id":418},{"start":{"row":80,"column":23},"end":{"row":80,"column":24},"action":"insert","lines":["n"]},{"start":{"row":80,"column":24},"end":{"row":80,"column":25},"action":"insert","lines":["e"]},{"start":{"row":80,"column":25},"end":{"row":80,"column":26},"action":"insert","lines":["w"]}],[{"start":{"row":86,"column":22},"end":{"row":86,"column":23},"action":"insert","lines":["."],"id":419},{"start":{"row":86,"column":23},"end":{"row":86,"column":24},"action":"insert","lines":["n"]},{"start":{"row":86,"column":24},"end":{"row":86,"column":25},"action":"insert","lines":["e"]},{"start":{"row":86,"column":25},"end":{"row":86,"column":26},"action":"insert","lines":["w"]}],[{"start":{"row":82,"column":3},"end":{"row":82,"column":4},"action":"remove","lines":["s"],"id":420},{"start":{"row":82,"column":2},"end":{"row":82,"column":3},"action":"remove","lines":["t"]},{"start":{"row":82,"column":1},"end":{"row":82,"column":2},"action":"remove","lines":["u"]}],[{"start":{"row":88,"column":3},"end":{"row":88,"column":4},"action":"remove","lines":["s"],"id":421},{"start":{"row":88,"column":2},"end":{"row":88,"column":3},"action":"remove","lines":["t"]},{"start":{"row":88,"column":1},"end":{"row":88,"column":2},"action":"remove","lines":["u"]}],[{"start":{"row":1,"column":18},"end":{"row":1,"column":19},"action":"remove","lines":["分"],"id":422},{"start":{"row":1,"column":17},"end":{"row":1,"column":18},"action":"remove","lines":["配"]}],[{"start":{"row":1,"column":17},"end":{"row":1,"column":20},"action":"insert","lines":["ベース"],"id":423},{"start":{"row":1,"column":20},"end":{"row":1,"column":21},"action":"insert","lines":["と"]}],[{"start":{"row":1,"column":21},"end":{"row":1,"column":25},"action":"insert","lines":["ミキサー"],"id":424},{"start":{"row":1,"column":25},"end":{"row":1,"column":26},"action":"insert","lines":["の"]}],[{"start":{"row":1,"column":26},"end":{"row":1,"column":28},"action":"insert","lines":["分量"],"id":425},{"start":{"row":1,"column":28},"end":{"row":1,"column":29},"action":"insert","lines":["の"]}],[{"start":{"row":1,"column":29},"end":{"row":1,"column":31},"action":"insert","lines":["比率"],"id":426}]]},"ace":{"folds":[],"scrolltop":1108,"scrollleft":0,"selection":{"start":{"row":88,"column":30},"end":{"row":88,"column":30},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":68,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1611752025485}