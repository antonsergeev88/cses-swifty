enum GrayCode {
    static func all(with size: Int) -> [String] {
        var codeStrings = [String]()
        for i in 0..<(1<<size) {
            let code = i ^ (i>>1)
            var codeString = ""
            for j in 0..<size {
                let shift = size - 1 - j
                codeString += code & (1<<shift) > 0 ? "1" : "0"
            }
            codeStrings.append(codeString)
        }
        return codeStrings
    }
}
