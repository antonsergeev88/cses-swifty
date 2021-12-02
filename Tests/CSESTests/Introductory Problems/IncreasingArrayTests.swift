import XCTest
@testable import CSES

final class IncreasingArrayTests: XCTestCase {
    func testEquals() {
        XCTAssertEqual(IncreasingArray.moves("1 1 1 1 1 1 1 1 1 1".arrayOfInt), 0)
    }

    func testBig() {
        XCTAssertEqual(IncreasingArray.moves("1000000000 1 1 1 1 1 1 1 1 1".arrayOfInt), 8999999991)
    }

    func testVarious() {
        XCTAssertEqual(IncreasingArray.moves("6 10 4 10 2 8 9 2 7 7".arrayOfInt), 31)
    }

    func testSingle() {
        XCTAssertEqual(IncreasingArray.moves("329873232".arrayOfInt), 0)
    }
}

private extension String {
    var arrayOfInt: [Int] {
        split(separator: " ").map {
            Int($0)!
        }
    }
}
