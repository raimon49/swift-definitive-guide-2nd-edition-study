enum Direction: Int {
    case Up = 0, Right, Down, Left

    static var defaultDirection = Direction.Right

    var horizontal: Bool {
        switch self {
        case Right, Left:
            return true
        default:
            return false
        }
    }

    init() {
        self = Direction.defaultDirection
    }

    func clockwise() -> Direction {
        let t = (self.rawValue + 1) % 4

        // rawValue: イニシャライザで初期化して90度回転したDirectionを返す
        // nilにはなり得ないため!を付ける
        return Direction(rawValue: t)!
    }

    mutating func turnBack() {
        // 180度回転
        self = Direction(rawValue: ((self.rawValue + 2) % 4))!
    }

    static func arrow(d: Direction) -> String {
        return ["↑", "→", "↓", "←"][d.rawValue]
    }
}
let a = Direction.Right
let i = a.rawValue              // i = 2 (Int)
let k = Direction.Down.rawValue // k = 1 (Int)

let b: Direction? = Direction(rawValue: 3)
print (b == Direction.Left) // true
if let c = Direction(rawValue: 2) {
    print("OK \(c.rawValue)") // OK 2
}

print(Direction.Left.clockwise().rawValue) // Left -> Up -> 0が出力される

var d = Direction.Left
print(d.rawValue)   // 3
d.turnBack()
print(d.rawValue)   // 1 (Leftの反対のRight)
print(d.horizontal) // true (Rightは水平方向)

Direction.defaultDirection = .Right // 右を初期値に
var e = Direction()
print(Direction.arrow(e)) // →
