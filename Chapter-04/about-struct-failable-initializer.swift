struct Time {
    let in24h: Bool
    var hour = 0, min = 0

    init?(_ h: Int, _ m: Int, in24h: Bool = false) {
        let maxh = in24h ? 24 : 11
        if h < 0 || h > maxh || m < 0 || m > 59 {
            // 初期化に失敗
            return nil
        }

        self.in24h = in24h
        hour = h
        min = m
        // 初期化に成功した場合はreturnを使わない
    }

    // 失敗の無いイニシャライザ
    // failable initializerと同じ引数リストでは宣言できない
    init(time: Time, in24h: Bool) {
        var h = time.hour
        if !in24h && time.hour > 11 {
            h -= 12
        }

        self.in24h = in24h
        hour = h
        min = time.min
    }
}

if let w = Time(22, 10, in24h: true) {
    print("\(w.hour):\(w.min)")
}

var u: Time? = Time(23, 40) // 既定は12時間制のため初期化に失敗
print(u)

var t: Time? = Time(20, 0, in24h: true)
u = Time(time: t!, in24h: false)
