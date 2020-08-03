//
//  SmurfViewTests.swift
//  SmurfViewerTests
//
//  Created by Arturo Dominguez Sanchez on 29/07/2020.
//  Copyright © 2020 Bofin Ltd. All rights reserved.
//

import Foundation
@testable import SmurfViewer
import XCTest

class SmurfViewControllerTests: UnitTestCase {
    
    var sut: SmurfViewController!

    override func setUp() {
      super.setUp()
      sut = UIStoryboard(name: "Main", bundle: nil)
        .instantiateInitialViewController() as? SmurfViewController
    }

    override func tearDown() {
      sut = nil
      super.tearDown()
    }


    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
