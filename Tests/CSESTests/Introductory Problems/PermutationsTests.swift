import XCTest
@testable import CSES

final class PermutationsTests: XCTestCase {
    func test1() throws {
        try XCTAssertEqual(Permutations.constructBeautifulPermutation(of: 1), [1])
    }

    func test2() {
        XCTAssertThrowsError(try Permutations.constructBeautifulPermutation(of: 2))
    }

    func test3() {
        XCTAssertThrowsError(try Permutations.constructBeautifulPermutation(of: 3))
    }

    func test4() throws {
        try XCTAssertEqual(Permutations.constructBeautifulPermutation(of: 4), [2, 4, 1, 3])
    }

    func test5() throws {
        try XCTAssertEqual(Permutations.constructBeautifulPermutation(of: 5), [2, 4, 1, 3, 5])
    }

    func test6() throws {
        try XCTAssertEqual(Permutations.constructBeautifulPermutation(of: 6), [2, 4, 6, 1, 3, 5])
    }
}
