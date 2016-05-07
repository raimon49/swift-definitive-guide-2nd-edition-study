struct DateWithString {
    let string: String
    let year, month, day: Int

    static let mons = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
                        "Aug", "Sep", "Oct", "Nov", "Dec"]
    static var longFormat = false

    init(_ y: Int, _ m: Int, _ d: Int) {
        year = y; month = m; day = d
        if DateWithString.longFormat {
            string = DateWithString.longString(y, m, d)
        } else {
            string = DateWithString.shortString(y, m, d)
        }
    }

    static func twoDigits(n: Int) -> String {
        let i = n % 100

        return i < 10 ? "0\(i)" : "\(i)"
    }

    static func longString(y: Int, _ m: Int, _ d: Int) -> String {
        return "\(y)-" + twoDigits(m) + "-" + twoDigits(d)
    }

    static func shortString(y: Int, _ m: Int, _ d: Int) -> String {
        return twoDigits(d) + mons[m-1] + twoDigits(y)
    }
}

let a = DateWithString(2015, 1, 20) // longFormat = false
print(a.string) // 20Jan25

DateWithString.longFormat = true // 形式を切り替える(mutatingキーワードは不要)

let b = DateWithString(2015, 1, 21) // longFormat = true
print(b.string) // 2015-01-21
