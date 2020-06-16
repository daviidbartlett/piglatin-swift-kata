import XCTest
@testable import katas

final class katasTests: XCTestCase {
    func testEmptyStringCase() {
        let output = pigLatin(string:"")
        XCTAssertEqual(output, "","expected empty string, received \(output)")
    }
    func testSingleVowelCase() {
        let output = pigLatin(string:"a")
        XCTAssertEqual(output, "away","expected \"away\", received \(output)")
    }
    func testSingleConsonantCase() {
        let output = pigLatin(string:"b")
        XCTAssertEqual(output, "bay","expected \"bay\", received \(output)")
    }
    
    func testWordBeginningWithVowel() {
        let output = pigLatin(string:"apple")
        XCTAssertEqual(output, "appleway","expected \"appleway\", received \(output)")
    }
    func testWordBeginningWithConsonant() {
        let output = pigLatin(string:"banana")
        XCTAssertEqual(output, "ananabay","expected \"ananabay\", received \(output)")
    }
    func testItIgnoresSpaces() {
        let output = pigLatin(string:"apples and bananas")
        XCTAssertEqual(output, "applesway andway ananasbay","expected \"applesway andway ananasbay\", received \(output)")
    }
    
    
    
//    static var allTests = [
//        ("testExample", testExample),
//    ]
}
