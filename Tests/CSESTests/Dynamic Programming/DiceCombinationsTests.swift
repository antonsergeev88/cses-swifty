import XCTest
@testable import CSES

final class DiceCombinationsTests: XCTestCase {
    func test1() {
        XCTAssertEqual(DiceCombinations.combinations(for: 1), 1)
    }

    func test2() {
        XCTAssertEqual(DiceCombinations.combinations(for: 2), 2)
    }

    func test3() {
        XCTAssertEqual(DiceCombinations.combinations(for: 3), 4)
    }

    func test4() {
        XCTAssertEqual(DiceCombinations.combinations(for: 4), 8)
    }

    func test5() {
        XCTAssertEqual(DiceCombinations.combinations(for: 5), 16)
    }

    func test6() {
        XCTAssertEqual(DiceCombinations.combinations(for: 6), 32)
    }

    func test7() {
        XCTAssertEqual(DiceCombinations.combinations(for: 7), 63)
    }

    func test8() {
        XCTAssertEqual(DiceCombinations.combinations(for: 8), 125)
    }


    func test9() {
        XCTAssertEqual(DiceCombinations.combinations(for: 9), 248)
    }

    func test10() {
        XCTAssertEqual(DiceCombinations.combinations(for: 10), 492)
    }

    func test11() {
        XCTAssertEqual(DiceCombinations.combinations(for: 50), 660641036)
    }

    func test12() {
        XCTAssertEqual(DiceCombinations.combinations(for: 1000), 937196411)
    }

//    func test13() {
//        XCTAssertEqual(DiceCombinations.combinations(for: 123456), 113810539)
//    }
//
//    func test14() {
//        XCTAssertEqual(DiceCombinations.combinations(for: 654321), 615247550)
//    }
//
//    func test15() {
//        XCTAssertEqual(DiceCombinations.combinations(for: 999998), 39372206)
//    }
//
//    func test16() {
//        XCTAssertEqual(DiceCombinations.combinations(for: 999999), 511319454)
//    }
//
//    func test17() {
//        XCTAssertEqual(DiceCombinations.combinations(for: 1000000), 874273980)
//    }
//
//    func test18() {
//        XCTAssertEqual(DiceCombinations.combinations(for: 1001), 94201505)
//    }
//
//    func test19() {
//        XCTAssertEqual(DiceCombinations.combinations(for: 999997), 74225807)
//    }
//
//    func test20() {
//        XCTAssertEqual(DiceCombinations.combinations(for: 40), 567401756)
//    }
}
