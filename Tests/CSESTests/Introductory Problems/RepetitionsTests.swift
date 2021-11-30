import XCTest
@testable import CSES

final class RepetitionsTests: XCTestCase {
    func test10A() {
        XCTAssertEqual(Repetitions.findLongestRepetition("AAAAAAAAAA"), 10)
    }

    func test5AC() {
        XCTAssertEqual(Repetitions.findLongestRepetition("ACACACACAC"), 1)
    }

    func testLongestTail() {
        XCTAssertEqual(Repetitions.findLongestRepetition("ACCGGGTTTT"), 4)
    }

    func testLongestHead() {
        XCTAssertEqual(Repetitions.findLongestRepetition("AAAACCCGGT"), 4)
    }

    func testSeveralEqualRepetitions() {
        XCTAssertEqual(Repetitions.findLongestRepetition("CTCAGGTCCG"), 2)
    }

    func testSingleCharacter() {
        XCTAssertEqual(Repetitions.findLongestRepetition("A"), 1)
    }
}
