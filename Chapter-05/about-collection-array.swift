let a = [1, 2]
let b = [2, 1]
// false
print(a == b)

// true [1, 2, 1]が構成されたため
print(a + [1] == [1] + b)

var dogs = ["仁", "義", "礼", "智", "忠", "信", "孝",]
let sub = dogs[1..<4]
// ["義", "礼", "智"]
print(sub)

// 添字の範囲を指定して別な配列を代入できる
var s = ["春", "夏", "秋", "冬"]
s[0...0] = ["初春", "仲春", "晩春"]
// ["初春", "仲春", "晩春", "春", "夏", "秋", "冬"]
print(s)

s[1...3] = ["花見", "梅雨", "夏休み"]
// ["初春", "花見", "梅雨", "夏休み", "秋", "冬"]
print(s)

s[3...4] = [] // 代入した結果、s[3]とs[4]が削除される
// ["初春", "花見", "秋", "冬"]
print(s)

var days = ["日", "月", "火", "水", "木", "金", "土"]
let subDays = days[2..<5] // ArraySlice型
print(subDays)            // ["火", "水", "木"]
print(subDays.count)      // 3
print(subDays.startIndex) // 2
print(subDays[2])         // 火
print(subDays[4])         // 木
// ArraySlice型 -> Array型 Arrayのイニシャライザに渡して初期化
let subArray = [String](subDays)
print(subArray.startIndex) // 0
print(subArray[0])         // 火
