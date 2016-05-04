// hとwが関数内の仮引数になる
// 内部引数名またはローカル引数名(local parameter name)と呼ぶ
func area(height h:Double, width w:Double) -> Double {
    return h * w
}

// 外部引数名heightが明示されたため、第1引数にもキーワード指定が必要
let a = area(height: 10.0, width: 12.5)
print(a)

// キーワードを用いても、引数の呼び出し順序は変えられない
// let a = area(width: 12.5, height: 10.0)

// 外部引数名を_で捨てて省略
func areaNoKeyword(h: Double, _ w:Double) -> Double {
    return h * w
}
let ank = areaNoKeyword(10.0, 12.5)
print(ank)

// 内部引数名を_で捨てて省略
func compare(a:Int, _ b:Int, option _:Bool) -> Bool {
    return a > b
}
_ = compare(10, 8, option:true)
