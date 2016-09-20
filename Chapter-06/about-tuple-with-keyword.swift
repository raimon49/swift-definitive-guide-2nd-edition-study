let photo = (file: "tigier.jpg", width: 640, height: 800)
// どちらのアクセス方法でもtigier.jpgを出力
print(photo.0)
print(photo.file)

let img = ("phoenix.png", 1200, 800)
var v1: (String, Int, Int) = img
var v2: (file: String, width: Int, height: Int) = photo
// var v3: (name: String, x:Int, y:Int) = photo // キーワードの異なるタプルには代入不可
var v3: (name: String, x: Int, y: Int) = photo as (String, Int, Int) // as演算子でキャストすると代入できる
print(v3)

// 型の別名を付けると簡略化された構造体のように使える
typealias PhotoFile = (file: String, width: Int, height: Int)
var w: PhotoFile = photo
print(w.file)
