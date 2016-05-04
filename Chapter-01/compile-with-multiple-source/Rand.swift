import Foundation

struct RandGenerator {
    static func initialize() {
        // 時刻情報で乱数を初期化
        srandom( UInt32(time(nil)) )
    }
    let max: Int
    let random: () -> Int

    init(max:Int) {
        self.max = max
        // 上限値までの乱数を生成するクロージャをプロパティで保持
        random = { Foundation.random() % max }
    }
}
