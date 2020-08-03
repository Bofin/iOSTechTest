//
//  SurfCellTests.swift
//  SmurfViewerTests
//
//  Created by Arturo Dominguez Sanchez on 30/07/2020.
//  Copyright © 2020 Bofin Ltd. All rights reserved.
//

import Foundation

@testable import SmurfViewer
import XCTest

class SmurfCellTests: UnitTestCase {
    var window: UIWindow!
    var hostVC: UIViewController!
    var sut: SmurfCell!
    
    override func setUp() {
        super.setUp()
        
        window = UIWindow()
        hostVC = UIViewController(nibName: nil, bundle: nil)
        window.rootViewController = hostVC
    }

    func createAndAddView() {
        sut = SmurfCell()
        hostVC.view.addSubview(sut)
        sut.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        
    }

    func test_dataIsRetrievedFromNetworkService_thenStringIsDisplayedInView() {
        let expectedString = "DummyBaconData"
        mockNetworkService.returnResult = .success(
            .init(
                urlResponse: HTTPURLResponse(url: URL(string: "http://www.dummy.com")!, mimeType: nil,expectedContentLength: 0, textEncodingName: nil),
                data: expectedString.data(using: .utf8)!
            )
        )
        let labelExpectation = expectation(description: "Label text is set")
        
        createAndAddView()
        delayedCall {
            labelExpectation.fulfill()
            XCTAssertEqual(self.sut.smurfName.text, expectedString)
        }
        wait(for: [labelExpectation], timeout: 3)
    }
    
    func test_errorIsReturnedByNetworkService_thenErrorIsDisplayedInView() {
        let expectedString = "Sorry an error occured"
        mockNetworkService.returnResult = .failure(NSError(domain: "", code: 1, userInfo: [:]))
        let labelExpectation = expectation(description: "Label text is set to error message")
        
        createAndAddView()
        delayedCall {
            labelExpectation.fulfill()
            XCTAssertEqual(self.sut.smurfName.text, expectedString)
        }
        wait(for: [labelExpectation], timeout: 3)
    }
    

}
