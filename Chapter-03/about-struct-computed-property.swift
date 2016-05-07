struct Ounce {
    // 初期値は必須
    var mL: Double = 0.0
    // 1オンス（米国）
    static let ounceUS = 29.5735

    init(ounce: Double) {
        // 計算型プロパティ（computed property）で値を設定
        self.ounce = ounce
    }

    var ounce: Double {
        get {
            return mL / Ounce.ounceUS
        }
        set {
            // setterには暗黙的に引数newValueが利用可能
            mL = newValue * Ounce.ounceUS
        }
    }
}

var o = Ounce(ounce: 2.0)
print(o.mL) // 59.147

o.ounce += 8.0
print(o.ounce) // 10.0
print(o.mL) // 295.735

var a = Ounce(ounce: 2.0)
var b = Ounce(ounce: 10.0)
print("\(a.mL)mL, \(b.mL)mL") // 59.147mL, 295.735mL
print("\(a.ounce)oz, \(b.ounce)oz") // 2.0oz, 10.0oz

// 格納型プロパティをswap関数で交換
swap(&a.mL, &b.mL)
print("\(a.mL)mL, \(b.mL)mL") // 295.735mL, 59.147mL

// 計算型プロパティをswap関数で交換
a = Ounce(ounce: 2.0)
b = Ounce(ounce: 10.0)
swap(&a.ounce, &b.ounce)
print("\(a.ounce)oz, \(b.ounce)oz") // 10.0oz, 2.0oz
