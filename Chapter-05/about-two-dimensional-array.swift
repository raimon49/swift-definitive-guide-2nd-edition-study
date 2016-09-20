var table: [[String]] = [["A", "B"], ["X", "Y", "Z"]]

print(table[0])    // ["A", "B"]
print(table[1][0]) // X
table[0].removeAtIndex(1)
print(table)       // [["A"], ["X", "Y", "Z"]]
