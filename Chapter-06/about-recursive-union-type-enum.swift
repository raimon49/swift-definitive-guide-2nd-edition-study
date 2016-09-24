enum メッセージ: CustomStringConvertible {
    case 文書(String, String)              // 差出人, 文書
    case データ(String, [Int8])            // 差出人, データ列
    indirect case 転送(String, メッセージ) // 差出人, メッセージ

    var description: String {
        switch self {
        case let 文書(from, str):
            return from + "（" + str + "）"
        case let データ(from, _):
            return from + "[データ]"
        case let 転送(from, msg):
            return from + "←\(msg)"
        }
    }
}

let m1 = メッセージ.文書("伊藤", "休みます")
let m2 = メッセージ.転送("白石", m1)
let m3 = メッセージ.転送("山田", m2)

print(m3) // 山田←白石←伊藤（休みます）
