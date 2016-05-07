let stock = ["01", "2", "4", "05", "8", "q", "X", ]
for str in stock {
    guard let v = Int(str) else {
        print(str + "??", terminator: " ")
        continue
    }

    // guard文の条件節で宣言した定数vが利用可能
    print(v, terminator: " ")
}

print("")
