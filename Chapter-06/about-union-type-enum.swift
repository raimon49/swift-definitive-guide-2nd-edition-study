enum WebColor {
    case Name(String)      // 色の名前
    case Code(String)      // 16進カラーコード
    case White, Black, Red // よく使う色
}

// WebColorインスタンスで様々な色を表現
let background = WebColor.Name("indigo")   // インディゴブルー
let turquoise: WebColor = .Code("#40E0D0") // ターコイズ
let textColor = WebColor.Black             // 黒

// 共用型の列挙型では、シンプルな列挙型、値型の列挙型と違い==演算子で比較ができない（自分で定義・実装が必要）
// 以下はエラー
// if turquoise == WebColor.Code("#40E0D0")

enum Ticket {
    case 切符(Int, Bool, 回数券: Bool) // 普通券: 価格、小人か、回数券か
    case カード(Int, Bool)             // プリペイドカード: 残高、小人か
    case 敬老パス                      // 敬老パス

    mutating func pay(u: Int) -> Bool {
        switch self {
        case 切符(let fare, _, _):
            return u <= fare // 購入金額と改札通過に必要な金額を比較
        case カード(let point, let flag):
            if point < u {
                return false
            }

            self = カード(point - u, flag) // 自分自信の情報を改札通過後の残高に書き換える
        default:
            break
        }

        return true
    }
}

let t = Ticket.切符(1000, /* 小人? */false, 回数券: false)

switch t {
case let .切符(fare, flag, _):
    print("普通券: \(fare) " + (flag ? "小人" : "大人"))
case .敬老パス:
    print("敬老パス")
case .カード(let r, true) where r < 110:
    print("プリペイドカード残高が小人の最低運賃に不足")
case .カード(let r, false) where r < 230:
    print("プリペイドカード残高が大人の最低運賃に不足")
case .カード:
    print("カード")
}

let p = Ticket.カード(2000, true)

switch p {
case .カード:
    print("プリペイドカード(switch文)")
default:
    break
}

if case .カード = p {
    print("プリペイドカード(if-case文)")
}

// 複数条件のif-caseパターンマッチ
if case let .カード(_, flag) = p where flag == true,
   case let .カード(price, _) = p where price >= 2000 {
    print("残高2000円以上の小人用プリペイドカード")
}

if case .切符(let fare, _, _) = t where fare >= 1000 {
    print("1000円以上の普通券")
}

let tickets: [String:Ticket] = ["支倉": .切符(260, false, 回数券: true),
                               "佐々木": .切符(220, false, 回数券: false)]
let name = "佐々木"
// 辞書からの取り出し(if-let文)とパターンマッチ(case)の組み合わせ
if let t = tickets[name], case .切符(220, _, _) = t {
    print("佐々木は220円券")
}

// payメソッドによる改札通過
var mycard: Ticket = .カード(300, false)
if mycard.pay(260) {
    // この時点で残高40円
    print("1つ目の改札: 通過OK")
}
if mycard.pay(220) {
    // 次の改札は残高不足で通れない
    print("2つ目の改札: 通過OK")
}

enum PrintableWebColor: CustomStringConvertible {
    case Name(String)
    case Code(String)
    case White, Black, Red
    var description: String {
        switch self {
        case Name(let str):
            return str
        case Code(let str):
            return str
        case White:
            return "white"
        case Black:
            return "black"
        case Red:
            return "red"
        }
    }
}

let pwc1 = PrintableWebColor.Red
print("this color is \(pwc1)")
let pwc2 = PrintableWebColor.Name("green")
print("this color is \(pwc2)")
