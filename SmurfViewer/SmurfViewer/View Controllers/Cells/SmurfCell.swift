//
//  SmurfCell.swift
//  SmurfViewer
//
//  Created by Arturo Dominguez Sanchez on 27/07/2020.
//  Copyright © 2020 Bofin Ltd. All rights reserved.
//

import UIKit

class SmurfCell: UITableViewCell {
    
    @IBOutlet weak var smurfImage: CustomImageView!
    @IBOutlet weak var smurfName: UILabel!
    
 
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        smurfImage.clipsToBounds = true        
    }
    
    func config(model : SmurfModel){
        
        self.smurfName.text = model.name
        self.smurfName.textColor = color2
        self.smurfName.font = UIFont.boldSystemFont(ofSize: 30)
        self.smurfName.shadowColor = UIColor.lightGray
        self.smurfName.shadowOffset = CGSize(width: 2, height: 2)

        self.selectionStyle = .none
                
        let imageUrl = Injected.smurfService.getImageUrl(pathParameter: model.path)
        self.smurfImage.loadImageUsingUrlString(urlString: imageUrl)
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
