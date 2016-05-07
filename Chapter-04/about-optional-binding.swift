let year: Int? = Int("2020")
if let y = year {
    print("あと\(y - 2014)年")
} else {
    print("エラー")
}

// 定数でなく変数varにも代入可能
if var y = Int("2020") {
    y -= 2014
    print("あと\(y)年")
} else {
    print("エラー")
}

if let sapporo = Int("1972"), nagano = Int("1998") {
    print("\(nagano - sapporo) years.")
}

var nagano = 1998
// ifの条件節を満たした時だけoptional bindingを評価し、
// nilでなかった時だけwhereの条件式が評価される
if nagano < 2000, let tokyo = Int("2020") where tokyo > 2000 {
    print("Tokyo \(tokyo)")
}
