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

let t1 = Time(hour: 13, min: 20)
let t2 = t1
print(t1.toString()) // 13:20
t1.inc()
print(t2.toString()) // 13:21 （参照型であることが分かる）

class Time2 : Time, CustomStringConvertible {
    var pm: Bool

    init(hour: Int, min: Int, pm: Bool) {
        self.pm = pm
        // スーパークラスのイニシャライザを使う
        super.init(hour: hour, min: min)
    }

    override convenience init(hour: Int, min: Int) {
        let isPm = hour >= 11
        self.init(hour: isPm ? hour - 12 : hour, min: min, pm: isPm)
    }

    override func add(min: Int) {
        super.add(min)

        while hour >= 12 {
            hour -= 12
            pm = !pm
        }
    }

    var description: String {
        return toString() + " " + (pm ? "PM" : "AM")
    }
}

let t3 = Time2(hour: 23, min: 30)
print(t3) // 11:30 PM
