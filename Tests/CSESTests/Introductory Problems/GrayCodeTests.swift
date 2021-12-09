import XCTest
@testable import CSES

final class GrayCodeTests: XCTestCase {
    func test1() {
        XCTAssertEqual(GrayCode.all(with: 1), ["0", "1"])
    }

    func test2() {
        XCTAssertEqual(GrayCode.all(with: 2), ["00", "01", "11", "10"])
    }

    func test3() {
        XCTAssertEqual(GrayCode.all(with: 3), ["000", "001", "011", "010", "110", "111", "101", "100"])
    }
}
