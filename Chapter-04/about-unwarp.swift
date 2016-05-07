var year: Int? = Int("2020")
var remain: Int = year! - 2016
print(year)

year! -= 2016 // yearは4になる
print(year)

var nagano: Int? = Int("1998")

if nagano != nil {
    // ここでは開示指定が必要
    print("Nagano: \(nagano!)")
}

if nagano == 2020 { // if文では開示後の値と直接比較が可能
    print(2020)
} else if nagano == 1998 {
    print(1998)
}

var x: Int? = 1964
var ret: Bool
ret = x > 2000 // falseが返る
print(ret)
x = nil
ret = x < 2000 // trueが返る
print(ret)
