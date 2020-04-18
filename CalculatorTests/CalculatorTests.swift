//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Tran Minh Tri on 4/18/20.
//  Copyright © 2020 Universal. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    var resCalc : CalculatorModel!

    override func setUp() {
        super.setUp()
        resCalc = CalculatorModel()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAdd() {
        XCTAssertEqual(resCalc.add(1, 1),2)
        XCTAssertEqual(resCalc.add(1, 2),3)
        XCTAssertEqual(resCalc.add(5, 4),9)
    }
    
    func testMulParams() {
        let cases = [(4,3,12), (2,4,8), (3,5,15), (4,6,24)]
        cases.forEach {
            XCTAssertEqual(resCalc.mul($0, $1), $2)
        }
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let result = 2 + 2
        XCTAssert(result == 4, "something gone wrong here")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
