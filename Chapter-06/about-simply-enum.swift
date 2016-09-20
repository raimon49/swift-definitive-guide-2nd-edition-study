enum Direction {
    case Up
    case Down
    case Right
    case Left

    func clockwise() -> Direction {
        // 90度回転した方向を返す
        switch self {
        case .Up:
            return Right
        case .Down:
            return Left
        case .Right:
            return Down
        case .Left:
            return Up
        }
    }
}
// 以下の宣言でも同義
// enum Direction {
//     case Up, Down, Right, Left
// }

let u = Direction.Up
var r: Direction = .Right
print(u == r)             // false 違う値
print(u.clockwise() == r) // true  回転させると同値になる
print(Direction.Down.clockwise() == Direction.Left)
