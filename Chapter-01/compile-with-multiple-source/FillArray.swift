class FillArray {
    var data: [Int]
    init(length: Int, generator: ()->Int) {
        // 指定された長さの配列をゼロ埋めで用意し、
        data = [Int](count:length, repeatedValue:0)
        for i in 0..<length {
            // クロージャによって生成された値を格納する
            data[i] = generator()
        }
    }
}
