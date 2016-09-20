var d = ["Swift": 2014, "Objective-C": 1983]
if let v = d["Swift"] {
    print(v) // 存在するキーの取り出し
}

if let v = d["Python"] {
    print(v) // 存在しないキーのため出力なし
}

var e = ["Ruby": 1995]
print(e) // ["Ruby": 1995]
e["Java"] = 1995
e["Python"] = 1991
print(e) // ["Java": 1995, "Ruby": 1995, "Python": 1991]
e["Java"] = nil
print(e) // ["Python": 1991, "Ruby": 1995]

// for-in文でタプルを取り出し
for (lang, year) in e {
    print("\(lang) == \(year)")
}
for t in e {
    print("\(t.0) == \(t.1)")
}
// キーと値をそれぞれ取り出し
for k in e.keys {
    print("key: \(k)")
}
let values = [Int](e.values)
print(values) // [1991, 1995]

var a = ["one": "I", "two": "II", "three": "III"]
var b = ["two": "II", "three": "III"]
print(a == b) // false
a["one"] = nil
print(a == b) // true
