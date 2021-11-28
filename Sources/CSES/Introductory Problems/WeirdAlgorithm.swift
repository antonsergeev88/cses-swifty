enum WeirdAlgorithm {
    static func weirdSequence(startedWith first: Int) -> UnfoldFirstSequence<Int> {
        sequence(first: first) { previous in
            guard previous != 1 else {
                return nil
            }
            return previous % 2 == 0 ? previous / 2 : previous * 3 + 1
        }
    }
}
