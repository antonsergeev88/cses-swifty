enum Permutations {
    enum PermutationsError: Error {
        case noSolution
    }

    static func constructBeautifulPermutation(of n: Int) throws -> [Int] {
        switch n {
        case 1:
            return [1]
        case 2...3:
            throw PermutationsError.noSolution
        default:
            return Array((1...n).filter({ $0 % 2 == 0 })) + Array((1...n).filter({ $0 % 2 == 1 }))
        }
    }
}
