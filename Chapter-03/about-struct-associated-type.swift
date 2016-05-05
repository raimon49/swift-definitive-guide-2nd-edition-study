struct SimpleTime {
    var hour, min: Int

    init(_ hour: Int, _ min: Int) {
        self.hour = hour
        self.min = min
    }
}

struct PointOfTime {
    struct Date {
        var year, month, day: Int
    }

    typealias Time = SimpleTime
    var date: Date
    var time: Time

    init(year: Int, month: Int, day: Int, hour: Int, min: Int) {
        date = Date(year: year, month: month, day: day)
        time = Time(hour, min)
    }
}

var a = PointOfTime(year: 2024, month: 11, day: 7, hour: 14, min: 55)
print(a.date.month) // 11
print(a.time.min)   // 55

// ネスト型を利用
var b = PointOfTime.Date(year: 2022, month: 11, day: 6)
print(b.year) // 2022

// ネストした付属型を利用して既存の値と入れ替え
a.time = PointOfTime.Time(10, 21)
print(a.time.hour) // 10
