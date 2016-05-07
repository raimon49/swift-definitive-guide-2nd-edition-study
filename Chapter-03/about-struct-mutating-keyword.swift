struct Clock {
    // 暗黙的に呼べるようになる全項目イニシャライザで初期化させる
    var hour = 0, min = 0

    mutating func advance(min: Int) {
        let m = self.min + min
        if m >= 60 {
            // mutatingキーワード付きで宣言されたメソッドのため、プロパティの値を変更できる
            self.min = m % 60

            let t = self.hour + m / 60
            self.hour = t % 24
        } else {
            self.min = m
        }
    }

    mutating func inc() {
        // 1分進める
        self.advance(1)
    }

    func toString() -> String {
        let h = hour < 10 ? " \(hour)" : "\(hour)"
        let m = min < 10 ? "0\(min)" : "\(min)"

        return h + ":" + m
    }
}

// 全項目イニシャライザ
var tic = Clock(hour: 19, min: 40)
print(tic.toString()) // 19:49

tic.advance(19)
print(tic.toString()) // 19:59

tic.inc()
print(tic.toString()) // 20:00
