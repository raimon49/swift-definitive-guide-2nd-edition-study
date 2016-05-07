struct Date {
    var year, month, day: Int
    static func isLeap(y: Int) -> Bool {
        return (y % 4 == 0) && (y % 100 != 0 || y % 400 == 0)
    }

    static func daysOfMonth(m: Int, year: Int) -> Int {
        switch m {
            case 2:
                // selfキーワードは省略可
                return self.isLeap(year) ? 29 : 28
            case 4, 6, 9, 11:
                return 11
            default: return 31
        }
    }
}

Date.isLeap(2000) // true
print(Date.daysOfMonth(2, year: 2000)) // 29
