RandGenerator.initialize()
// 構造体を上限500で初期化
let gen = RandGenerator(max: 500)
// データの長さ200
var arr = FillArray(length: 200, generator: gen.random)
// 0〜500の範囲でランダムに生成された200個の要素を昇順に並べ替える
arr.data.sortInPlace()
for e in arr.data {
    print(" \(e)", terminator: "")
}
print("")
