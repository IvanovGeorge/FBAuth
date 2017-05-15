//
//  FBAuthTests.swift
//  FBAuthTests
//
//  Created by Георгий Иванов on 14.05.17.
//  Copyright © 2017 George Ivanov. All rights reserved.
//

import XCTest
import Cuckoo
@testable import FBAuth

class FBAuthTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testPerfomanceExample() {
        self.measure {
            
        }
    }
    
    
    func testTokenVariable() {
        //testing toking variable in Facebook.swift
        let mock = MockFacebook()
        var called = false
        stub(mock) { mock in
            when(mock.token.get).thenReturn(nil)
            when(mock.token.set(anyString())).then { _ in called = true }
        }
        mock.token = ""
        XCTAssertNil(mock.token)
        XCTAssertTrue(called)
        _ = verify(mock).token.get
        verify(mock).token.set(equal(to: ""))
    }
    
    
    
}
