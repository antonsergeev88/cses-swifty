enum MissingNumber {
    static func missingNumber<S>(n: Int, sequence: S) -> Int where S: Sequence, S.Element == Int {
        let wholeSum = n * (n + 1) / 2
        let sequenceSum = sequence.reduce(0, +)
        return wholeSum - sequenceSum
    }
}
