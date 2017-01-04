class DayOfMonth: CustomStringConvertible {
    var month, day: Int

    init(month: Int, day: Int) {
        // イニシャライザ
        self.month = month
        self.day = day
    }

    var description: String {
        // 計算型プロパティ
        return DayOfMonth.twoDigits(month) + "/" + DayOfMonth.twoDigits(day)
    }

    class func twoDigits(n: Int) -> String {
        // 2桁ゼロ埋め文字列で表現するクラスメソッド
        let i = n % 100
        if (i < 10) {
            return "0\(n)"
        }

        return "\(i)"
    }

    class func dayOfWeek(month m: Int, day d: Int, year y: Int = 2016) -> Int {
        // ツェラーの公式: Chapter-02より
        var in_m = m, in_y = y
        if in_m < 3 {
            // 1, 2月だったら前年の13, 14月として計算させる
            // varキーワードがあるため引数に再代入が可能
            in_m += 12; in_y -= 1
        }

        let leap = in_y + in_y / 4 - in_y / 100 + in_y / 400
        return (leap + (13 * in_m + 8) / 5 + d) % 7
    }
}

class Date: DayOfMonth {
    var year: Int
    var dow: Int // 曜日（0:日, 1:月...)

    init(_ y: Int, _ m: Int, _ d: Int) {
        year = y
        dow = Date.dayOfWeek(month: m, day: d, year: y) // サブクラスで追加したプロパティを設定してから
        super.init(month: m, day: d)   // スーパークラスのイニシャライザを呼ぶ必要がある
    }
}

class DateW: Date {
    static let namesOfDay = [
        "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"
    ]
    var dweek = String()

    override init(_ y: Int, _ m: Int, _ d: Int) {
        // overrideキーワードが必要な点に注意
        super.init(y, m, d)

        dweek = DateW.namesOfDay[dow]
    }

    convenience init(_ m: Int, _ d: Int, year: Int = 2016) {
        // 年指定を省略可能な簡易イニシャライザ
        self.init(year, m, d) // 自クラスのイニシャライザに処理をデリゲート
    }

    override var day: Int {
        // プロパティの上書きのためoverrideキーワードが必要
        didSet {
            dow = DateW.dayOfWeek(month: month, day: day, year: year)
            dweek = DateW.namesOfDay[dow] // didSetのタイミングでdweekプロパティを再計算する
        }
    }

    override var description: String {
        // 計算型プロパティの上書き
        return "\(year)/" + super.description + " (\(dweek))"
    }
}

var d = DateW(1991, 5, 15)
print(d) // 1991/05/15 (Wed)

d.day = d.day + 1
print(d) // 1991/05/16 (Thu)

var c = DateW(4, 1)
print(c) // 2016/04/01 (Fri)
