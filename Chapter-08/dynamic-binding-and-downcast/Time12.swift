class Time12 : Time, CustomStringConvertible {
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

