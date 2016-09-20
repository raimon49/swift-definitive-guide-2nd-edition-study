let color: [Character] = ["浅", "葱"]
let s = String(color) // s = "浅葱"
print(s)

let atmark: Character = "@"       // ASCII文字"@"
let ditto: Character = "\u{3005}" // Unicode "々"
let chain = Character("鎖")       // initで初期値"鎖"
print(atmark)
print(ditto)
print(chain)

let us1 = UnicodeScalar(0x8e3f) // "華"
let us2 = UnicodeScalar("澪")
let us3: UnicodeScalar = "箒"
print(us1)
print(us2)
print(us3)
print(us1 > us2) // true
print(us3.value) // 31634 (0x7b92)

// UnicodeScalar型を使って平仮名だけを取り出す
let text = "Swiftで、iPhoneアプリをつくれます。"
let first = UnicodeScalar(0x3041) // "あ"
let last = UnicodeScalar(0x309f)  // "ゟ" Unicodeで表現できる平仮名の最後
var kana = ""
for sc in text.unicodeScalars {
    if sc >= first && sc <= last {
        kana.append(sc)
    }
}

print(kana) // "でをつくれます"

// Unicodeでグを表現する2種類の文字を比較
let gu: Character = "\u{30B0}"         // "グ"
let ku: Character = "\u{30AF}\u{3099}" // "ク" + "濁音"
print(gu == ku) // true

// Character型では合成されて1文字、UnicodeScalar型では2文字と数えられる
print(String(ku).characters.count)     // 1
print(String(ku).unicodeScalars.count) // 2
