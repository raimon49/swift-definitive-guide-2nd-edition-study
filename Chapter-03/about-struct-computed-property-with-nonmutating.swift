struct ValueWithCounter {
    private let _value: Double
    var count = 0

    init(_ v: Double) {
        _value = v
    }

    var value: Double {
        mutating get {
            // 格納型プロパティをgetterで変更するためmutatingが必要
            count += 1
            return _value
        }
    }
}

struct ValueInLine {
    private  static var _pool: [Double] = []
    let index: Int

    init(_ v: Double) {
        index = ValueInLine._pool.count
        ValueInLine._pool.append(v)
    }

    var value: Double {
        get {
            return ValueInLine._pool[index]
        }
        nonmutating set {
            ValueInLine._pool[index] = newValue
        }
    }

    static func clear() {
        for i in 0..<_pool.count {
            _pool[i] = 0.0
        }
    }
}

// wはletの定数ではvalueに参照アクセスできない
var w = ValueWithCounter(0.125)
for _ in 0..<5 {
    print(w.value)
}
print(w.count) // 5

// zはnonmutatingが保証されるため、letの定数でも動作する
let z = ValueInLine(109.7)
print(z.value) // 109.7
z.value = 0.0
print(z.value) // 0.0
