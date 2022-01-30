import Foundation

enum ConcertTickets {
    static func findTickets(tickets: [Int], people: [Int]) -> [Int] {
        var multiset = Multiset(tickets)
        var result = [Int]()
        for person in people {
            if let ticket = multiset.lowerBound(of: person) {
                multiset.remove(element: ticket)
                result.append(ticket)
            } else {
                result.append(-1)
            }
        }
        return result
    }

    struct Multiset {
        private var set: NSMutableOrderedSet
        private var counter: [Int: Int]

        init(_ array: [Int]) {
            set = NSMutableOrderedSet(array: array.sorted())
            counter = [:]
            for element in array {
                counter[element, default: 0] += 1
            }
        }

        mutating func remove(element: Int) {
            let count = counter[element]!
            if count > 1 {
                counter[element] = count - 1
            } else {
                counter[element] = nil
                set.remove(element)
            }
        }

        func lowerBound(of element: Int) -> Int? {
            guard set.count > 0 else {
                return nil
            }
            if set.contains(element) {
                return element
            }
            let upperBound = set.index(of: element, inSortedRange: NSRange(location: 0, length: set.count), options: [.insertionIndex]) { lhs, rhs in
                let lhs = lhs as! Int
                let rhs = rhs as! Int
                if lhs < rhs {
                    return .orderedAscending
                } else if lhs == rhs {
                    return .orderedSame
                } else {
                    return .orderedDescending
                }
            }
            let lowerBound = upperBound - 1
            guard lowerBound >= 0 else {
                return nil
            }
            return set.object(at: lowerBound) as? Int
        }
    }
}
