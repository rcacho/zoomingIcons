//
//  SocialItemCell.swift
//  ZoomingIcons
//
//  Created by ricardo antonio cacho on 2015-08-06.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

import UIKit

class SocialItemCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func drawRect(rect: CGRect) {
        layer.cornerRadius = frame.width/2
        layer.masksToBounds = true
    }
    
    var socialItemForCell:SocialItem? {
        didSet {
            imageView.image = socialItemForCell!.image
            self.backgroundColor = socialItemForCell?.color
        }
    }
    
    override func layoutSubviews() {
        for subview in self.subviews {
            subview.layer.cornerRadius = subview.frame.width/2
            subview.layer.masksToBounds = true
        }
    }
    
}
