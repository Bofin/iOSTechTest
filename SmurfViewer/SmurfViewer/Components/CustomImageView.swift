//
//  CustomImageView.swift
//  SmurfViewer
//
//  Created by Arturo Dominguez Sanchez on 28/07/2020.
//  Copyright © 2020 Bofin Ltd. All rights reserved.
//

import UIKit

let imageCache = NSCache<NSString, UIImage>()

class CustomImageView: UIImageView {
    
    var imageUrlString: String?
    
    func loadImageUsingUrlString(urlString: String) {
        
        imageUrlString = urlString
        
        let url = URL(string: urlString)
        
        image = nil
        
        if let imageFromCache = imageCache.object(forKey: urlString as NSString)
        {
            self.image = imageFromCache
            return
        }
        
        URLSession.shared.dataTask(with: url!, completionHandler: {
            (data, response, error) in
            
            if error != nil {
                print(error!)
                return
            }
            
            DispatchQueue.main.async {
                
                var imageToCache = UIImage(data: data!)
                    
                    //Setting default image
                    if imageToCache == nil{
                        imageToCache = UIImage(named: "default_image")
                    }
                    
                    if self.imageUrlString == urlString {
                        self.image = imageToCache
                    }
                    
                imageCache.setObject(imageToCache!, forKey: urlString as NSString)
                
                

            }
        }).resume()
    }
    
    
    
}
    
    
    
    
    
