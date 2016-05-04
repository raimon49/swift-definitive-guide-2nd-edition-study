// for-in文で1〜64までの整数のうち、3と8の倍数は表示しない
for i in 1..<64 where 1 % 3 != 0 && i % 8 != 0 {
    print(i, terminator:" ")
}
print("")

// トランプの数札を作成
for n in 2...10 {
    for s in ["♠", "♡", "♣", "♢"] {
        print(" \(s)\(n)", terminator:"")
    }
    print("")
}
