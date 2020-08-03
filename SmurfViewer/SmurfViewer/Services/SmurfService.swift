//
//  SmurfService.swift
//  SmurfViewer
//
//  Created by Arturo Dominguez Sanchez on 27/07/2020.
//  Copyright © 2020 Bofin Ltd. All rights reserved.
//

import Foundation



protocol SmurfService {
    func getSmurfs(functionOK: @escaping ([SmurfModel]) -> Void)
    func getImageUrl(pathParameter: String) -> String
}

extension Smurfing {
    class Service: SmurfService {

        
        func getSmurfs(functionOK: @escaping ([SmurfModel]) -> Void){
            
            let url = URL(string: REQUEST_URL)!
            
            let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
                
                guard let data = data else {
                    return
                }
                                
                do {
                    //create json object from data
                    if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [Dictionary<String,Any>] {
                        let smurfs = SmurfModel.mappingFromArray(json)

                        functionOK(smurfs)
                        
                    }
                } catch let error {
                    print(error.localizedDescription)
                }
            }

            task.resume()
        }
        
        
        
        func getImageUrl(pathParameter: String) -> String {
            let imageUrl = IMAGE_BASE_REQUEST + pathParameter
                                                  
            return imageUrl
        }
        
        
        
    }
    
    
    


}




