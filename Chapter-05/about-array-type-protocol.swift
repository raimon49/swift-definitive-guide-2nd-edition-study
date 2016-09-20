let s = ["春", "夏", "秋", "冬"]

// Array.reverse()で返されるオブジェクトはSequenceTypeプロトコルに適合しているためfor inで走査可能
// SequenceTypeプロトコルに適合 == SequenceType型であると言える
for item in s.reverse() {
    print(item)
}
