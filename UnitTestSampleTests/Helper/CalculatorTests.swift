//
//  CalculatorTests.swift
//  UnitTestSample
//
//  Created by hosopy on 2015/12/10.
//  Copyright © 2015年 hosopy. All rights reserved.
//

import Foundation
import XCTest

@testable import UnitTestSample

class CalculatorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAdd() {
        XCTAssertEqual(Calculator.add(a: 1, b: 1), 2)
    }
    
    func testAsyncAdd() {
        let expectation: XCTestExpectation = expectationWithDescription("Calculator.addAsync() finished.")
        
        Calculator.addAsync(a: 1, b: 1, delay: 3, completion: { (result: Int) in
            XCTAssertEqual(result, 2)
            expectation.fulfill()
        })
        
        waitForExpectationsWithTimeout(10, handler: { (error: NSError?) in
        })
    }
}