@_exported import Utilities

public struct AdventOfCode2019: Year {
    public let number = 2019
    public let days: [SolvableDay] = [
        Day1(),
        Day2(),
        Day3(),
        Day4(),
        Day5(),
        Day6(),
        Day7(),
        Day8(),
        Day9(),
        // {DAYS}
    ]
    
    public init() {}
}
