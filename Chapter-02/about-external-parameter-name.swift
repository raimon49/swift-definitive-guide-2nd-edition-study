// 外部引数名(external parameter name)
// またはキーワード引数名(keyword argument name)と呼ぶ
func buyProduct(product:Int, price:Int, quantity:Int) {
    print("Product ID:\(product), amount = \(price * quantity)")
}

buyProduct(19090, price:180000, quantity:1)
