class ICCard {
    static let Deposit = 500
    var money = 0

    required init(charge: Int) {
        // requiredキーワードで宣言し、必須イニシャライザとさせる
        money = charge - ICCard.Deposit // 保証金を差し引いた文がICカードの残額
    }
}

class Icocai: ICCard {
    static var serial = 0
    let idnumber: Int

    init (id: Int, money: Int) {
        // 必須イニシャライザとは別定義の指定イニシャライザ
        idnumber = id
        super.init(charge: money)
    }

    required init(charge: Int) {
        Icocai.serial = Icocai.serial + 1
        idnumber = Icocai.serial
        super.init(charge: charge)
    }
}

class Suiica: Icocai {
    var name = String()
}

let dummySuica = Suiica(id: 5, money: 1000)
print(dummySuica.money) // 500

let serial1 = Suiica(charge: 1500)
let serial2 = Suiica(charge: 1500)

print(serial1.idnumber) // 1
print(serial2.idnumber) // 2
