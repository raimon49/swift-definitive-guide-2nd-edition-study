// オーバーフロー演算子（overflow operator）
// オーバーフローとアンダーフローでSwiftが発生させるエラーを抑止
var z: UInt8 = 1
z = z &- 2
print("z = \(z)") // z = 255

// 論理演算子ではCと同じ短絡評価（short-circuit evaluation）が採用される
func odd(i: Int) -> Bool {
    print(i)
    return i & 1 == 1
}

var b = true
var c1 = b || odd(1)  // bがtrueのため、||演算子以降のoddは実行されない
var c2 = !b || odd(3) // oddが実行され3を出力し、代入結果はfalse

// nil合体演算子も短絡評価が採用される
func f(i: Int) -> Int {
    print(i)
    return i
}

var opv: Int? = 0
print(opv ?? f(100)) // 0を出力し、fは評価されない

opv = nil
print(opv ?? f(100)) // f(100)が評価され、100を2回出力
