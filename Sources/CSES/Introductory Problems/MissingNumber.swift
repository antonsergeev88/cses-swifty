enum MissingNumber {
    static func missingNumber<S>(n: Int, sequence: S) -> Int where S: Sequence, S.Element == Int {
        sequence.reduce(n * (n + 1) / 2, -)
    }
}
