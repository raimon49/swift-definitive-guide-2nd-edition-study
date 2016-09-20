var a: Array<Int> = [2, 5, 8, 11, 7]
var s = Array<String>()

// init<S>(_: S)
// SequenceType型であるArraySlice型やString.charactersプロパティが渡せる
let seq = [Int](0 ..< 10)
print(seq)
let chars = [Character]("これはSwiftですか？".characters)
print(chars)

// init(count: Int, repeatedValue: T)
var data = [Double](count: 10, repeatedValue: 0.0)
print(data)
