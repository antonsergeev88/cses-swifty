import XCTest
@testable import CSES

final class DistinctNumbersTests: XCTestCase {
    func testEquals() {
        XCTAssertEqual(DistinctNumbers.countDistinctNumbers("1 1 1 1 1 1 1 1 1 1".arrayOfInt), 1)
    }

    func testDistinct() {
        XCTAssertEqual(DistinctNumbers.countDistinctNumbers("7 4 10 9 6 1 8 2 5 3".arrayOfInt), 10)
    }

    func testMixed() {
        XCTAssertEqual(DistinctNumbers.countDistinctNumbers("5 9 5 5 10 9 3 1 8 8".arrayOfInt), 6)
    }
}

private extension String {
    var arrayOfInt: [Int] {
        split(separator: " ").map {
            Int($0)!
        }
    }
}
