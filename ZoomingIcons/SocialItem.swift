//
//  SocialItem.swift
//  ZoomingIcons
//
//  Created by ricardo antonio cacho on 2015-08-06.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

import UIKit

class SocialItem {
    
    var color:UIColor?
    var image:UIImage
    var name:String?
    var summary:String?
    
    init(name:String, summary:String, color:UIColor, image:UIImage) {
        self.name = name
        self.summary = summary
        self.color = color
        self.image = image
    }
}