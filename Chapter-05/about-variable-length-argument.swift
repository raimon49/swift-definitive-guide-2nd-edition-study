// 可変長引数を受け付ける関数の宣言
func maxOfInts(first: Int, _ params: Int...) -> Int {
    var m = first
    for v in params {
        if m < v {
            m = v
        }
    }

    return m
}

print(maxOfInts(3, 9, 2, 6)) // 9
print(maxOfInts(100, 88))    // 100

// 可変長引数を最後の引数にしない場合は外部引数名(ex: label)を使う
func cards(numbers: Int..., label: String) {
    for n in numbers {
        print(label + String(n), terminator: " ")
    }

    print("")
}

cards(3, 5, 7, 8, label: "剣") // "剣3 剣5 剣7 剣8"
