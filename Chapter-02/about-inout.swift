func mySwap(inout a:Int, inout _ b:Int) {
    let tmp = a; a = b; b = tmp
}

var x = 100, y = 0
print("x: \(x) y: \(y)")

mySwap(&x, &y)
print("x: \(x) y: \(y)")
