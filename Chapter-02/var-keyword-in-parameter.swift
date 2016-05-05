// ツェラーの公式
// 年月日から曜日（日曜:0, 月曜:1〜）を返す
// XXX: var parameterと--演算子はSwift 3.xで削除予定のため関数内ローカル変数に変更
func dayOfWeek(month m: Int, day d: Int, year y: Int = 2016) -> Int {
    var in_m = m, in_y = y
    if in_m < 3 {
        // 1, 2月だったら前年の13, 14月として計算させる
        // varキーワードがあるため引数に再代入が可能
        in_m += 12; in_y -= 1
    }

    let leap = in_y + in_y / 4 - in_y / 100 + in_y / 400
    return (leap + (13 * in_m + 8) / 5 + d) % 7
}

// 2016-05-05...木曜:5
print("2016-05-05: " + String(dayOfWeek(month: 5, day: 5, year: 2016)))
