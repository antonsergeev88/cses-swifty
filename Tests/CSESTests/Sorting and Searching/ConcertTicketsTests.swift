import XCTest
@testable import CSES

final class ConcertTicketsTests: XCTestCase {
    func test0() {
        XCTAssertEqual(ConcertTickets.findTickets(tickets: "5 3 7 8 5".arrayOfInt, people: "4 8 3".arrayOfInt), "3 8 -1".arrayOfInt)
    }

    func test1() {
        XCTAssertEqual(ConcertTickets.findTickets(tickets: "1 1 1 1 1 1 1 1 1 1".arrayOfInt, people: "1 1 1 1 1 1 1 1 1 1".arrayOfInt), "1 1 1 1 1 1 1 1 1 1".arrayOfInt)
    }

    func test2() {
        XCTAssertEqual(ConcertTickets.findTickets(tickets: "9 3 9 6 6 8 6 2 6 3".arrayOfInt, people: "9 5 4 6 3 9 3 3 5 2".arrayOfInt), "9 3 3 6 2 9 -1 -1 -1 -1".arrayOfInt)
    }

    func test6() {
        XCTAssertEqual(ConcertTickets.findTickets(tickets: "1".arrayOfInt, people: "10 10".arrayOfInt), "1 -1".arrayOfInt)
    }
}

private extension String {
    var arrayOfInt: [Int] {
        split(separator: " ").map {
            Int($0)!
        }
    }
}
