func nickname(name: String?, age: Int) -> String {
    let s = name ?? "名無し"

    return "浪速の" + s + "（\(age)歳）"
}

print(nickname("シンデレラ", age: 35)) // 浪速のシンデレラ（35歳）
print(nickname(nil, age: 20))          // 浪速の名無し（20歳）

var n: String? = "海賊王"
print(nickname(n, age: 25)) // 浪速の海賊王（25歳）
n = nil
print(nickname(n, age: 25)) // 浪速の名無し（25歳）
