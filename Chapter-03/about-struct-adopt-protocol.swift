struct Time: CustomStringConvertible {
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

    var description: String {
        let h = hour < 10 ? " \(hour)" : "\(hour)"
        let m = min < 10 ? "0\(min)" : "\(min)"

        return h + ":" + m
    }
}

// CustomStringConvertibleに適合しているためprint()で評価可能
let tm = Time(hour: 19, min: 40)
print(tm) // 19:40

let t2 = tm.add(20)
print("時刻は\(t2)です。") // 時刻は20:00です。
