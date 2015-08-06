//
//  DetailViewContoller.swift
//  ZoomingIcons
//
//  Created by ricardo antonio cacho on 2015-08-06.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var socialImageView: UIImageView!
    
    @IBOutlet weak var socialNameLabel: UILabel!
    
    @IBOutlet weak var socialSummaryLabel: UILabel!
    
    var socialItemToBeDetailed:SocialItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        socialImageView.image = socialItemToBeDetailed?.image
        socialNameLabel.text = socialItemToBeDetailed?.name
        socialSummaryLabel.text = socialItemToBeDetailed?.summary
        view.backgroundColor = socialItemToBeDetailed?.color
    }
    

    @IBAction func PopBackToMenu(sender: UIButton) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
}
