func mySwap(inout a: Int, inout _ b: Int) {
    let tmp = a; a = b; b = tmp
}

// 引数を3つ受け取るmySwap関数を宣言
func mySwap(inout a: Int, inout _ b: Int, inout _ c: Int) {
    let tmp = a; a = b; b = c; c = tmp
}

// String型を受け取るmySwap関数を宣言
func mySwap(inout a: String, inout _ b: String) {
    let tmp = a; a = b; b = tmp
}

// 外部引数名を使ったオーバーロード関数
func mySwap(inout little a: Int, inout great b: Int) {
    if a > b {
        let tmp = a; a = b; b = tmp
    }
}

var s = 10, t = 20
print("s=\(s), t=\(t)")
mySwap(&s, &t)
print("s=\(s), t=\(t)")

var x = 1, y = 2, z = 3
print("x=\(x), y=\(y), z=\(z)")
mySwap(&x, &y, &z)
print("x=\(x), y=\(y), z=\(z)")

var a = "Foo", b = "Bar"
print("a=\(a), b=\(b)")
mySwap(&a, &b)
print("a=\(a), b=\(b)")

var g = 10, l = 20
print("g=\(g), l=\(l)")
mySwap(little: &g, great: &l)
print("g=\(g), l=\(l)") // 交換されない
