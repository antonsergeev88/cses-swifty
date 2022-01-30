import XCTest
@testable import CSES

final class FerrisWheelTests: XCTestCase {
    func test0() {
        XCTAssertEqual(FerrisWheel.countGondolas(children: "7 2 3 9".arrayOfInt, maxWeight: 10), 3)
    }

    func test1() {
        XCTAssertEqual(FerrisWheel.countGondolas(children: "1 1 1 1 1 1 1 1 1 1".arrayOfInt, maxWeight: 2), 5)
    }

    func test2() {
        XCTAssertEqual(FerrisWheel.countGondolas(children: "1 2 2 1 1 2 2 2 2 2".arrayOfInt, maxWeight: 2), 9)
    }

    func test3() {
        XCTAssertEqual(FerrisWheel.countGondolas(children: "10 9 7 10 9 8 5 6 6 5".arrayOfInt, maxWeight: 10), 9)
    }

    func test4() {
        XCTAssertEqual(FerrisWheel.countGondolas(children: "9 8 8 9 10 8 5 8 7 10".arrayOfInt, maxWeight: 15), 8)
    }

    func test5() {
        XCTAssertEqual(FerrisWheel.countGondolas(children: "5 9 6 5 8 9 10 6 5 6".arrayOfInt, maxWeight: 20), 5)
    }

    func test11() {
        XCTAssertEqual(FerrisWheel.countGondolas(children: "6 10 7 6 9 10 7 7".arrayOfInt, maxWeight: 22), 4)
    }

    func test12() {
        XCTAssertEqual(FerrisWheel.countGondolas(children: "1 2 3".arrayOfInt, maxWeight: 10), 2)
    }
}

private extension String {
    var arrayOfInt: [Int] {
        split(separator: " ").map {
            Int($0)!
        }
    }
}
