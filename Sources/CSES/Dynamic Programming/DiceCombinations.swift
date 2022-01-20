enum DiceCombinations {
    static func combinations(for n: Int) -> Int {
        var results = Array(repeating: 0, count: 1_000_001)
        results[0] = 1
        for i in 1...n {
            var sum = 0
            for dice in 1...6 {
                if i - dice >= 0 {
                    sum += results[i - dice]
                }
            }
            results[i] = sum  % 1_000_000_007
        }
        return results[n]
    }
}
