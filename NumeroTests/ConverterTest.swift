//
//  ConverterTest.swift
//  NumeroTests
//
//  Created by richard oh on 14/05/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

import XCTest
@testable import Numero

class ConverterTest: XCTestCase {

    var converter: Converter!
    
    override func setUp() {
        super.setUp()
        converter = Converter()
    }

    override func tearDown() {
        converter = nil
        super.tearDown()
    }
    
    func testConversionForOne(){
        let result = converter.convert(1)
        XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }
    
    func testConversionForTwo(){
        let result = converter.convert(2)
        XCTAssertEqual(result, "II", "Conversion for 2 is incorrect")
    }
    
    func testConversionForFive(){
        let result = converter.convert(5)
        XCTAssertEqual(result,"V", "Conversion for 5 is incorrect")
    }
    
    func testConversionForSix(){
        let result = converter.convert(6)
        XCTAssertEqual(result,"VI", "Conversion for 6 is incorrect")
    }
    
    func testConversionForTen(){
        let result = converter.convert(10)
        XCTAssertEqual(result,"X", "Conversion for 10 is incorrect")
    }
    
    func testConversionForTwenty(){
        let result = converter.convert(20)
        XCTAssertEqual(result,"XX", "Conversion for 20 is incorrect")
    }
    
    func testConversionForFour(){
        let result = converter.convert(4)
        XCTAssertEqual(result, "IV", "Conversion for 4 is incorrect")
    }
    
    func testConversionForNine(){
        let result = converter.convert(9)
        XCTAssertEqual(result, "IX", "Conversion for 9 is incorrect")
    }
    
    func testConversionForZero(){
        let result = converter.convert(0)
        XCTAssertEqual(result, "", "Conversion for 0 is incorrect")
    }
    
    func testConversionFor3999(){
        let result = converter.convert(3999)
        XCTAssertEqual(result, "MMMCMXCIX","Conversion for 3999 is incorrect")
    }
    

//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
