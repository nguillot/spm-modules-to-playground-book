import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(spm_modules_to_playground_bookTests.allTests),
    ]
}
#endif