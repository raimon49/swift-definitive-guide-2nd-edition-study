infix operator 〜 {
    precedence 20      // 他の演算子より低い優先度20
    associativity none // 結合規則なし(left, right, none)
}

func 〜(n: Int, w: Int) -> String {
    var str = String(n)
    let pad = w - str.characters.count
    if pad > 0 {
        str = String(count: pad,
                repeatedValue: Character(" ")) + str
    }

    return str
}

// 書籍のforループは禁止になったためfor-inループへ
// for var wid = 2; wid <= 6; wid +=2 {
for wid in 2.stride(through: 6, by: 2) {
    for i in 1...5 {
        // 「〜」演算子は「+」よりも優先度が低いため後から評価される
        print(i + 7 〜 wid, terminator: "")
    }

    print("") // 改行代わり
}

postfix operator % {} // 後置演算子として宣言

postfix func % (n: Int) -> Double {
    return 0.01 * Double(n)
}

postfix func % (r: Double) -> Double {
    return 0.01 * r
}

var price: Double = 19_800 // 19,800円を85%売価セールし、消費税8%を適用
print(price * 85% * 108%)  // 18176.4と表示

infix operator >? {    // 二項（中置）演算子として宣言
    precedence 90      // 代入演算子と同じ優先度
    associativity none // 結合規則なし
}

func >? (inout lhs: Double, rhs: Double) {
    if lhs < rhs {
        // 左辺の変数値より右辺の変数値が大きければ左辺を置き換える
        lhs = rhs
    }
}

var a = 1.22
for x in [0.9, 1.25, -1.0, 2.0, 0.86] {
    a >? x // inoutで書き換えられるが呼び出し側に&は不要
}
print(a) // for-inループの中で最大だった2.0を表示

enum Rank: Int { // 実体型をIntにする
    case Ace = 1, Two, Three, Four, Five, Six, Seven,
        Eight, Nine, Ten, Jack, Queen, King
}

func ~= (pt: Int, r: Rank) -> Bool {
    // 実体型の値と等しいトランプのカードならtrue
    return pt == r.rawValue
}

let hand: [Rank] = [.Queen, .Ace, .Ten, .Six, .King, .Jack]
for card in hand {
    switch card {
    case 1:
        print("Ace")
    case 13:
        print("King")
    case .Queen:
        print("Queen")
    default:
        print(".")
    }
}

infix operator ▽ { // NOR演算をカスタム演算子で宣言・定義
    precedence 110  // 演算子||と同じ優先度
    associativity left
}

func ▽ (lhs: Bool, @autoclosure rhs: () -> Bool) -> Bool {
    if lhs {
        return false // lhsが真ならクロージャrhsを評価しない
    }

    return !rhs() // lhsが偽ならrhs()の否定を返す
}
