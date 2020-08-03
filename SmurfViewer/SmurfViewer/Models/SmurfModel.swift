//
//  SmurfModel.swift
//  SmurfViewer
//
//  Created by Arturo Dominguez Sanchez on 27/07/2020.
//  Copyright © 2020 Bofin Ltd. All rights reserved.
//

import Foundation

//struct Throwable<T: Decodable>: Decodable {
//    let result: Result<T, Error>
//
//    init(from decoder: Decoder) throws {
//        result = Result(catching: { try T(from: decoder) })
//    }
//}


class SmurfModel: Decodable
{
    var name: String = ""
    var path: String = ""
    var wikipediaInfo: String = ""


    static func mapping(_ dicto: Dictionary<String, Any>) -> SmurfModel
    {
        let model = SmurfModel()
        
        model.name = dicto["name"] as? String ?? ""
        model.path = dicto["path"] as? String ?? ""
        model.wikipediaInfo = dicto["wikipediaInfo"] as? String ?? ""

        //TODO:
        
        return model
    }
    
    static func mappingFromArray(_ response: [Dictionary<String,Any>]) -> [SmurfModel]
    {
        var array = [SmurfModel]()
        
        for dicto in response
        {
           array.append(SmurfModel.mapping(dicto))
        }
        
        return array
    }
}
//    static func mappingFromArray(_ params: NetworkResponse) -> [SmurfModel]
//    {
//
//        let decoder = JSONDecoder()
//        let throwables = try! decoder.decode([Throwable<SmurfModel>].self, from: params.data)
//        let smurfs = throwables.compactMap { $0.value }
//
//        return smurfs
//    }
//}



//
//enum Throwable<T: Decodable>: Decodable {
//    case success(T)
//    case failure(Error)
//
//    init(from decoder: Decoder) throws {
//        do {
//            let decoded = try T(from: decoder)
//            self = .success(decoded)
//        } catch let error {
//            self = .failure(error)
//        }
//    }
//}
//
//extension Throwable {
//    var value: T? {
//        switch self {
//        case .failure(_):
//            return nil
//        case .success(let value):
//            return value
//        }
//    }
//}
