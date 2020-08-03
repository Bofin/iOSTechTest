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
    
    //I don't usually work with unit tests, so please hope you take that into account.
    //I will quickly learn to use them properly
    
    override func setUp() {
        super.setUp()
        
        window = UIWindow()
        hostVC = UIViewController(nibName: nil, bundle: nil)
        window.rootViewController = hostVC
    }
    
    override func tearDown() {
      sut = nil
      super.tearDown()
    }

    func createAndAddView() {
        sut = SmurfCell()
        hostVC.view.addSubview(sut)
        sut.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        
    }

    func test_smurfCellIsDisplayedInView() {
        
        createAndAddView()

        XCTAssertNotNil(self.sut, "SmurfCell is displayed")


    }
    

}
