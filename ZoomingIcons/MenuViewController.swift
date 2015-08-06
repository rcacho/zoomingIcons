//
//  MenuViewController.swift
//  ZoomingIcons
//
//  Created by ricardo antonio cacho on 2015-08-06.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var data:Dictionary<String,Array<SocialItem>>?
    var selectedSocialItem:SocialItem?
    
    override func viewDidLoad() {
        
        self.collectionView.contentInset = UIEdgeInsets(top: 50, left: self.collectionView.contentInset.left, bottom: self.collectionView.contentInset.bottom, right: self.collectionView.contentInset.right)
        
        let dataArray = MockDataSource.fetchData()
        data = ["section1":[dataArray[0],dataArray[1]],"section2":[dataArray[2],dataArray[3], dataArray[4]]]
        
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (section == 0) {
            return 2
        } else {
            return 3
        }
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("socialCell", forIndexPath: indexPath) as! SocialItemCell
        cell.socialItemForCell = data?.values.array[indexPath.section][indexPath.row]
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        selectedSocialItem = data?.values.array[indexPath.section][indexPath.row]
        performSegueWithIdentifier("detailSocialItem", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "detailSocialItem") {
            let destinationController = segue.destinationViewController as! DetailViewController
            destinationController.socialItemToBeDetailed = selectedSocialItem
        }
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        let widthOfScreen = Int(collectionView.bounds.width)
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        let cellsize = Int(layout.itemSize.width)
        let numberOfCells = self.collectionView(collectionView, numberOfItemsInSection: section)
        let bufferBetweenCells = 5
        let totalbufferBetweenCells = bufferBetweenCells * (numberOfCells + 1)
        
        let amountOfSpaceAvailable = widthOfScreen - (cellsize * numberOfCells) - totalbufferBetweenCells
        
        return UIEdgeInsets(top: 10, left: CGFloat(amountOfSpaceAvailable/2), bottom: 10, right:CGFloat(amountOfSpaceAvailable/2))
    }
    
}
