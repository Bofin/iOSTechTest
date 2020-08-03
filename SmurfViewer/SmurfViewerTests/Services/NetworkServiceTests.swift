//
//  NetworkServiceTests.swift
//  SmurfViewerTests
//
//  Created by Arturo Dominguez Sanchez on 30/07/2020.
//  Copyright © 2020 Bofin Ltd. All rights reserved.
//

import Foundation
@testable import SmurfViewer
import XCTest

//I don't usually work with unit tests, so please hope you take that into account.
//I will quickly learn to use them properly

class NetworkServiceTests: UnitTestCase {

    var sut: NetworkServiceTests!

    override func setUp() {
        super.setUp()
        sut = Injected.networkService as? NetworkServiceTests
    }
    
    override func createMockNetworkService() -> MockNetworkService? {
                return nil // we want to test this service

    }

    
}
