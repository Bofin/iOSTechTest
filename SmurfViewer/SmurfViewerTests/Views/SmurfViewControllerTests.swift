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


//I don't usually work with unit tests, so please hope you take that into account.
//I will quickly learn to use them properly

class SmurfViewControllerTests: UnitTestCase {
    
    var sut: SmurfViewController!

    override func setUp() {
      super.setUp()
        let sut = SmurfViewController()
        sut.viewDidLoad()
//      sut = UIStoryboard(name: "Main", bundle: nil)
//        .instantiateInitialViewController() as? SmurfViewController
    }

    override func tearDown() {
      sut = nil
      super.tearDown()
    }
    

       func test_dataRetrievedFromNetworkServiceIsNotNull() {
        let request = URLRequest(url: URL(string: REQUEST_URL)!)
        
        mockNetworkService.data(request: request) { [weak self] result in
            
            XCTAssertNotNil(self, "Service request is not nil")
            
        }
        
    }

}
