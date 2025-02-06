//
//  CurrencyFormatterTests.swift
//  BankTestingAppUnitTests
//
//  Created by Francisco Aguirre on 05/02/25.
//

import Foundation
import XCTest

@testable import BankTestingApp

class Test:XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testShouldBeVisible() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(200.43)
        XCTAssert(result == "$200.43")
    }
    
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0)
        XCTAssert(result == "$0.00")
    }
    
}
