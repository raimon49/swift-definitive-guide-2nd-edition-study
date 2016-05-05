let fontSize: Float = 12.0

func setFont(name: String, size: Float = fontSize, bold: Bool = false) {
    print("\(name) \(size) " + (bold ? "[B]" : ""))
}

// ReglanPunch 12.0
setFont("ReglanPunch")
// Courier 12.0 [B]
setFont("Courier", bold: true)
// Times 16.0
setFont("Times", size: 16.0, bold: false)
// Times 18.0 [B]
setFont("Times", bold: true, size: 18.0)

func setGray(level: Int = 255, _ alpha: Float = 1.0) {
    print("Gray=\(level), Alpha=\(alpha)")
}

// Gray=255, Alpha=1.0
setGray()
// Gray=240, Alpha=1.0
setGray(240)
// Gray=128, Alpha=0.5
setGray(128, 0.5)
