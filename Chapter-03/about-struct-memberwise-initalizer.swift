struct Date {
    var year: Int = 2010
    var month: Int = 7, day: Int = 28
}

var d = Date()
print(d.year) // 2010
d.year = 2016
print(d.year) // 2016

// カスタムイニシャライザが定義されていない場合に呼べる全項目イニシャライザ
// 引数の呼び出し順はプロパティ名の宣言されている順番に準拠させる必要がある
let event = Date(year: 2000, month: 9, day: 13)

struct Time {
    let in24h: Bool = false
    var hour = 0, min = 0
}

// 定数プロパティin24hは全項目イニシャライザでは初期化できない
let t = Time(hour: 7, min: 0)
