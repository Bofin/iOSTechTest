//
//  SmurfServiceTests.swift
//  SmurfViewerTests
//
//  Created by Arturo Dominguez Sanchez on 03/08/2020.
//  Copyright © 2020 Bofin Ltd. All rights reserved.
//

import Foundation
@testable import SmurfViewer
import XCTest

class SmurfServiceTests: UnitTestCase {
    static let path = Test.pathExample


    var sut: SmurfService!

    override func setUp() {
        super.setUp()
        sut = Injected.smurfService
    }

    override func createMockSmurfService() -> MockSmurfService? {
        return nil // we want to test this service
    }

    func test_getImageUrlCorrectly() {
        let imageURL = sut.getImageUrl(pathParameter: SmurfServiceTests.path)
        
        XCTAssertEqual(imageURL, "https://raw.githubusercontent.com/Bofin/iOSTechTestData/master/SmurfImages/404Smurf.png")
    }
    
}
