struct Time {
    // 暗黙的に呼べるようになる全項目イニシャライザで初期化させる
    let hour, min: Int

    func add(min: Int) -> Time {
        var m = self.min + min
        var h = self.hour
        if m >= 60 {
            h = (h + m / 60) % 24
            m %= 60
        }

        return Time(hour: h, min: m)
    }

    func toString() -> String {
        let h = hour < 10 ? " \(hour)" : "\(hour)"
        let m = min < 10 ? "0\(min)" : "\(min)"

        return h + ":" + m
    }
}

// 全項目イニシャライザ
let t1 = Time(hour: 22, min: 45)
let t2 = t1.add(140)

print(t1.toString()) // 22:45
print(t2.toString()) //  1:05
