enum DistinctNumbers {
    static func countDistinctNumbers<S>(_ sequence: S) -> Int where S: Sequence, S.Element: Comparable {
        var last: S.Element?
        return sequence.sorted().reduce(0) { partialResult, element in
            defer {
                last = element
            }
            return last == element ? partialResult : partialResult + 1
        }
    }
}
