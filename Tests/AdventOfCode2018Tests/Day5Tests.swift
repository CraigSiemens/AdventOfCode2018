import XCTest
@testable import Day5

final class Day5Tests: XCTestCase {
    let day = Day5()
    
    let input = "dabAcCaCBAcCcaDA"
    
    func testPart1() {
        XCTAssertEqual(day.part1Solution(for: input), "10")
    }
    
    func testPart2() {
        XCTAssertEqual(day.part2Solution(for: input), "4")
    }
}