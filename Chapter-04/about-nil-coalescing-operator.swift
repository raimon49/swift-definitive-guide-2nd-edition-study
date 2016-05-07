var opv: String?
let S: String = "DEFAULT"
print(opv ?? S) // DEFAULT

var val = Int("XYZ") ?? 0
print(val) // 0

var x, y, z: Int?
val = x ?? y ?? z ?? 0
print(val) // 0
