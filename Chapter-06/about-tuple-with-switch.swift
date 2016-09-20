let day = (5, 3)
switch day {
case (1, 1):
    print("元旦")
case (2, 11):
    print("建国記念日")
case (4, 29), (5, 2...6):
    print("GW")
    fallthrough
case (5, 3):
    print("憲法記念日")
case (8, _):
    print("夏休み")
default:
    break
}

typealias People = (String, Int?)
var m: People = ("Taro", 30)
switch m {
case let (name, age?) where age >= 18:
    print("\(name), 免許も取れるよ")
case let (name, (15...18)?): // 区間を示すパターンに直接?は付けられないため()で囲む
    print("\(name), 高校生")
case (let name, nil):
    print("\(name), 年齢不明")
default:
    break
}
