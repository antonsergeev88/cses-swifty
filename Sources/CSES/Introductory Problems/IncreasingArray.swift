enum IncreasingArray {
    static func moves<S>(_ sequence: S) -> Int where S: Sequence, S.Element == Int {
        var moves = 0
        var previous: Int?
        for number in sequence {
            let currentMoves: Int
            defer {
                previous = number + currentMoves
            }
            guard let previous = previous else {
                currentMoves = 0
                continue
            }
            currentMoves = max(previous - number, 0)
            moves += currentMoves
        }
        return moves
    }
}
