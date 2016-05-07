#!/usr/bin/swift

var num = 0
// readLine()はUTF-8のString?型で入力文字を返し、EOFの場合はnilが返る
while let line = readLine() {
    num += 1
    print("\(num) " + line)
}
