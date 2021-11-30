enum Repetitions {
    static func findLongestRepetition<S>(_ sequnece: S) -> Int where S: Sequence, S.Element == Character {
        var max = 0
        var counter = 0
        var lastCharacter: Character?
        sequnece.forEach { character in
            if character == lastCharacter {
                counter += 1
            } else {
                counter = 1
                lastCharacter = character
            }
            max = Swift.max(counter, max)
        }
        return max
    }
}
