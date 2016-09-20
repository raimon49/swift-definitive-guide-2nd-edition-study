let str = "俺、Swiftプロク\u{3099}ラマになります。"

print(str[str.startIndex])               // "俺"
print(str[str.startIndex.successor()])   // "、"
print(str[str.startIndex.advancedBy(9)]) // "グ"
print(str[str.endIndex.predecessor()])   // "。"
print(str[str.endIndex.advancedBy(-3)])  // "ま"

// error: 'advance' is unavailable: call the 'advancedBy(n)' method on the index
// 上記エラーのため advance() -> String.Index.advancedBy() に修正

let x = str.startIndex.advancedBy(7)
let y = x.advancedBy(5)
print(str[x..<y]) // "プログラマ"
