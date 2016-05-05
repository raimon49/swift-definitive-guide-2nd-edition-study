struct Date {
    var year, month, day: Int

    init() {
        year = 2095; month = 10; day = 31
    }
}

let d = Date()
print(d.year) // 2095

struct Time {
    let in24h: Bool
    var hour = 0, min = 0

    init(hour: Int, min: Int) {
        in24h = false
        self.hour = hour
        self.min = min
    }

    init(hourIn24 h: Int) {
        in24h = true
        hour = h
    }

    init(_ hour: Int) {
        self.init(hourIn24: hour)
    }
}

// 12時間制 10:30
var a = Time(hour: 10, min: 30)

// 24時間制 15:00
var b = Time(hourIn24: 15)

// 24時間制  1:00
var c = Time(1)

struct DateWithTime {
    var date = Date()
    var time = Time(hour: 0, min: 15)
}

var u = DateWithTime()
print(u.date.year) // 2095
print(u.time.min)  // 15
