func printMonth(firstDay: Int, _ days: Int) {
    func daystr(d: Int) -> String {
        if d <= 0 {
            return "   "
        } else {
            return (d < 10 ? "  \(d)" : " \(d)")
        }
    }

    var d = 1 - firstDay
    while d <= days {
        var line = ""
        for _ in 0 ..< 7 {
            line += daystr(d)
            d += 1
            if d > days {
                break
            }
        }

        print(line)
    }
}

//      1  2  3  4  5  6
//   7  8  9 10 11 12 13
//  14 15 16 17 18 19 20
//  21 22 23 24 25 26 27
//  28 29 30 31
printMonth(1, 31)
