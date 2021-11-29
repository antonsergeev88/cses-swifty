import XCTest
@testable import CSES

final class MissingNumberTests: XCTestCase {
    func test1() {
        XCTAssertEqual(MissingNumber.missingNumber(n: 2, sequence: [2]), 1)
    }

    func test2() {
        XCTAssertEqual(MissingNumber.missingNumber(n: 5, sequence: [5, 2, 1, 3]), 4)
    }

    func test3() {
        XCTAssertEqual(MissingNumber.missingNumber(n: 10, sequence: [2, 8, 10, 6, 5, 1, 3, 7, 4]), 9)
    }
}
