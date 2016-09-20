let m = ("monkey.jpg", 161_022)
let cat = ("cat.jpg", 1024, 768)
var img: (String, Int, Int) = cat // 型が同じであるため代入可能

print("\(img.0): \(img.1)x\(img.2)") // 通番名（ドット記法）でアクセス可能

img.2 = 800 // varで宣言したタプルの値は通番名で上書き代入可能
print("\(img.0): \(img.1)x\(img.2)")

let photo = ("tiger.jpg", 640, 800)
let (file, width, height) = photo // タプルを分解代入
print("\(file): \(width)x\(height)")
let (onlyFile, _, _) = photo // ファイル名意外は代入せずに捨てる

let pic = ("snake.png", (768, 1024))
let (f, (w, h)) = pic
let (name, _) = pic
print("name: \(name)")
print("size: \(w)x\(h)")
print("size: \(pic.1.0)x\(pic.1.1)") // 入れ子の通番名でアクセス

var x = 100, y = 0
(x, y) = (y, x) // xとyの値を交換
print("x=\(x), y=\(y)") // x=0, y=100

func BMI(tall: Double, _ weight: Double) -> (Double, Double) {
    let ideal = 22.0
    let t2 = tall * tall / 10000.0 // cm -> m
    let index = weight / t2

    return (index, ideal * t2) // BMIと理想体重のタプルを返却
}

let result = BMI(177.0, 80.0)
print(result)

func f1() -> () {
    // 返り値が無い関数は空のタプルで表現される
    print("void function1")
}

func f2() -> Void {
    // Voidは()のエイリアス
    print("void function2")
}

f1()
f2()
