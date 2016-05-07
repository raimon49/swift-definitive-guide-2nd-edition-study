let year: Int! = Int("2020")
print("あと\(year - 2016)年")

// 以下でもInt!と同値
let y: ImplicitlyUnwrappedOptional<Int> = Int("2020")
print("東京五輪: \(y)")
