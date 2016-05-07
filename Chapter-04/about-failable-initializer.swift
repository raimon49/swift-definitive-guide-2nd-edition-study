let olympic = "2020"

//           Int? と同義
// var year: Optional<Int> = Int(olympic)
var year: Int? = Int(olympic) // 2020に変換される
var city: Int? = Int("Tokyo") // 変換に失敗しnilが格納される

print("year: \(year), city: \(city)")
