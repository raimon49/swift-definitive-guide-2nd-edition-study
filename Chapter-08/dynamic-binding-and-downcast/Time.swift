class Time {
    var hour = 0, min = 0

    // 全項目イニシャライザは使えないため自分で定義
    init(hour: Int, min: Int) {
        self.hour = hour
        self.min = min
    }

    // メソッド定義にmutatingキーワード無しでもプロパティ変更が可能
    func add(min: Int) {
        let m = self.min + min
        if m >= 60 {
            self.min = m % 60
            let t = self.hour + m / 60
            self.hour = t % 24
        } else {
            self.min = m
        }
    }

    func inc() {
        self.add(1)
    }

    func toString() -> String {
        let h = hour < 10 ? " \(hour)" : "\(hour)"
        let m = min < 10 ? "\(min)" : "\(min)"

        return h + ":" + m
    }
}
