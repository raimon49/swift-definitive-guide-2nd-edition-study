class A {
    func show() {
        print("A")
    }

    func who() {
        show()
    }

    class func showClass() {
        print("class A")
    }

    class func whoClass() {
        showClass()
    }

    func myclass() {
        // dynamicTypeで実行中のインスタンスが実際にどのクラスか動的に調べてアクセス
        // ただしSwift 2.3/3.0以降dynamicTypeキーワードはdeprecatedであるためtype(of:)を使う
        // type(of: self)
        // self.dynamicType
    }
}

class B: A {
    override func show() {
        print("B")
    }

    override class func showClass() {
        print("class B")
    }
}

var a = A()
var b = B()
a.who() // A
b.who() // B

A.whoClass() // class A
B.whoClass() // class B
