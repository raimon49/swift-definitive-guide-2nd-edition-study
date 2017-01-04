class Avatar {
    class func say() {
        print("Avatar")
    }

    required init() {
        // 必須イニシャライザにしておく
    }
}

class Player: Avatar {
    override class func say() {
        print("Player")
    }

    var name: String

    init(name: String) {
        self.name = name
        super.init()
    }

    required convenience init() {
        // 実装が必要な必須イニシャライザを簡易イニシャライザとして実装
        self.init(name: "(none)")
    }
}

var meta: Avatar.Type = Player.self // クラスオブジェクト型Avatar.TypeにPlayerクラスオブジェクトを格納
meta.say() // Player

let a: Avatar = meta.init() // Playerのインスタンスを作成できる
if let p = a as? Player {
    print(p.name) // Playerクラスの簡易イニシャライザで"(none)"として初期化済み
}
