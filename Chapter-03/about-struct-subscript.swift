struct FoodMenu {
    let menu = ["ざる", "かけ", "たぬき"]
    var submenu = ["とろろ", "天ぷら", "南蛮"]
    let count = 6

    subscript (i: Int) -> String {
        get {
            return i < 3 ? menu[i] : submenu[i - 3]
        }
        set {
            if i > 2 && i < 6 {
                submenu[i - 3] = newValue
            }
        }
    }
}

var menu = FoodMenu()
for i in 0..<menu.count {
    print(menu[i], terminator: " ")
}
print("")

// 添字3-5であれば代入操作で変更可能
menu[0] = "もり"
menu[5] = "くるみ"
for i in 0..<menu.count {
    print(menu[i], terminator: " ")
}
