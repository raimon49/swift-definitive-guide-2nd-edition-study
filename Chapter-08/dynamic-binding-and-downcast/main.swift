var array = [Time]()
array.append(Time(hour: 13, min: 10))
array.append(Time12(hour: 13, min: 20))
array.append(Time12(hour: 1, min: 20, pm: true))

for t in array {
    if t is Time12 {
        // CustomStringConvertibleプロトコルに適合してprint()で出力できるのはTime12型だけ
        print(t)
    } else {
        print(">", t.toString())
    }
}

// オプショナル束縛でTime12型として取り出し
if let u = array[2] as? Time12 {
    print(u.pm ? "PM" : "AM")
}
