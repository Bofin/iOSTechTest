//
//  MockSmurfService.swift
//  SmurfViewerTests
//
//  Created by Arturo Dominguez Sanchez on 30/07/2020.
//  Copyright © 2020 Bofin Ltd. All rights reserved.
//

import Foundation
@testable import SmurfViewer
import XCTest

class MockSmurfService: SmurfService {
    
    var smurf1 = SmurfModel()
    
    
    func getSmurfs(functionOK: @escaping ([SmurfModel]) -> Void) {
        
    }
    
    func getImageUrl(pathParameter: String) -> String {
        let imageUrl = IMAGE_BASE_REQUEST + pathParameter
        
        return imageUrl
    }
    
    
    
}
