let 追試下限 = 45
var score = 65 // ここを変えると試験結果の判定が出力される
switch score {
    case 追試下限..<75: print("追試験")
    case 90...100: print("秀")
    case 80..<90: print("優")
    case 70..<80: print("良")
    case 60..<70: print("可")
    default: print("不可")
}
