import XCTest
@testable import katas

final class katasTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(katas().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
