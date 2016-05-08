var x: Int? = 100
var y: Int? = nil
swap(&x, &y)
print("x: \(x), y: \(y)") // x: nil, y: 100

var a: Int = 8
var p: Int? = 99
var t: Int! = 1000
swap(&a, &p!) // 開示指定すると交換可能
swap(&a, &t!)
print("a: \(a), p: \(p), t: \(t)") // a: 1000, p: 8, t: 99
