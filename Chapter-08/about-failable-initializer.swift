class NamePlate: CustomStringConvertible {
    let name, title: String

    init() {
        name = "招待者"
        title = ""
    }

    init?(name: String, title: String) {
        // 失敗のある指定イニシャライザ
        self.name = name
        self.title = title

        if name == "" {
            // 全てのプロパティに値をセットしてからしかnilは返せない
            return nil
        }
    }

    var description: String {
        return "name: \(name)" + "\n" + "title: \(title)"
    }
}

class SpearkerNamePlate: NamePlate {
    override init?(name: String, title: String) {
        super.init(name: name, title: title)

        if title == "" {
            // 全てのプロパティに値をセットしてからしかnilは返せない
            return nil
        }
    }

    convenience init?(name: String) {
        if name == "" {
            // 簡易イニシャライザでは、いつnilを返してもよい
            return nil
        }

        self.init(name: name, title: "講演者")
    }
}

class GuestNamePlate: NamePlate {
    override init(name: String, title: String) {
        // 必ず失敗が無い方のイニシャライザを呼び、失敗しない定義として上書き
        if name == "" {
            super.init()
        } else {
            super.init(name: name, title: title)!
        }
    }
}

// 必ず失敗しないと分かっている時は開示指定子「!」を記述して非オプショナルで受け取れる
let plate = NamePlate(name: "加藤　恵", title: "主演")!
print(plate)

let nonFailablePlate = GuestNamePlate(name: "", title: "") // GuestNamePlateクラスはnameが空でも失敗しない

print(nonFailablePlate)
