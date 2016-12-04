class A: CustomStringConvertible {
    // 計算型タイププロパティ
    // サブクラスでは上書きできない
    static var className: String {
        return "A"
    }

    // 格納型タイププロパティ
    // サブクラスでは上書きできない
    static var total = 0

    // 計算型クラスプロパティ
    // サブクラスでは上書き可能
    class var level: Int {
        return 1
    }

    // タイプメソッド
    // サブクラスでは上書きできない
    static func point() -> Int {
        return 1000
    }

    // クラスメソッド
    // サブクラスでは上書き可能
    class func say() -> String {
        return "Ah."
    }

    init() {
        // Swift 3.xで削除される構文のため修正: ++A.total
        A.total += 1
    }

    var description: String {
        return "\(A.total): \(A.className), "
            + "Level=\(B.level), \(B.point())pt, \(B.say())"
    }
}

class B: A {
    override init() {
        super.init()
        // Swift 3.xで削除される構文のため修正: ++B.total
        B.total += 1
    }

    override var description: String {
        return "\(B.total): \(B.className), "
            + "Level=\(B.level), \(B.point())pt, \(B.say())"
    }
}

let a = A()
print(a)
let b = B()
print(b)
