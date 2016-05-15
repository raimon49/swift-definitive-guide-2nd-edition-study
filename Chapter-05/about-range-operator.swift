var inth: HalfOpenInterval<Int> = 0..<10  // 10は含まない
// var inth: HalfOpenInterval<Int>(0, 10) // イニシャライザで指定

var intc: ClosedInterval<Int> = 0...10 // 10を含む
// var intc ClosedInterval<Int>(0, 10) // イニシャライザで指定

var rg: Range<Int> = 0..<10               // 範囲型については0..<10としても0...9としても同じ
// var rg = Range<Int>(start: 0, end: 10) // イニシャライザで指定

var sintv = "archer" ... "saber" // 文字列の区間型
if sintv ~= "lancher" { // true評価される
    print("yes, lancher")
}

rg = -5 ... 5 // 整数の範囲型
if rg ~= 9 { // false評価され何もprintされない
    print("yes, 9")
}

// 区間型: 始点と終点の「間」自体を表すデータ
// 範囲型: 始点と終点の間に存在し、数え上げることのできるインスタンスの集合を扱うためのデータ

let range: Range<Int> = 0..<8 // 整数の範囲
for elm in range {
    print(elm) // 0から7を集合から取り出してprint可能
}

let intv = 0.0 ..< 8.0 // 実数の区間
// 区間型は集合ではないため以下はエラー
// error: type 'HalfOpenInterval<Double>' does not conform to protocol 'SequenceType'
// for elm in intv {
//     print(elem)
// }
