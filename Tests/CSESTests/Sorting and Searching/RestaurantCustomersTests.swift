import XCTest
@testable import CSES

final class RestaurantCustomersTests: XCTestCase {
    func testEquals() {
        XCTAssertEqual(RestaurantCustomers.maxCustomers([(5, 8), (2, 4), (3, 9)]), 2)
    }
}
