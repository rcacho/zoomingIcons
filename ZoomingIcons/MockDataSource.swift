//
//  MockDataSource.swift
//  ZoomingIcons
//
//  Created by ricardo antonio cacho on 2015-08-06.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

import UIKit


class MockDataSource {
    
    class func fetchData() ->Array<SocialItem>{
        
        let socialItem1 = SocialItem(name: "twitter", summary: "Twitter is an online social networking service that enables users to send and read short 140-character messages called \"tweets\".", color: UIColor(red: 0.255, green: 0.557, blue: 0.910, alpha: 1), image:  UIImage(named:"icon-twitter")!)
        let socialItem2 = SocialItem(name: "Facebook", summary: "Facebook (formerly thefacebook) is an online social networking service headquartered in Menlo Park, California. Its name comes from a colloquialism for the directory given to students at some American universities.", color: UIColor(red: 0.239, green: 0.353, blue: 0.588, alpha: 1), image: UIImage(named: "icon-facebook")!)
        let socialItem3 = SocialItem(name: "Youtube", summary: "YouTube is a video-sharing website headquartered in San Bruno, California. The service was created by three former PayPal employees in February 2005 and has been owned by Google since late 2006. The site allows users to upload, view, and share videos.", color: UIColor(red: 0.729, green: 0.188, blue: 0.180, alpha: 1), image: UIImage(named: "icon-youtube")!)
        let socialItem4 = SocialItem(name: "vimeo", summary: "Vimeo is a U.S.-based video-sharing website on which users can upload, share and view videos. Vimeo was founded in November 2004 by Jake Lodwick and Zach Klein.", color:UIColor(red: 0.329, green: 0.737, blue: 0.988, alpha: 1) , image: UIImage(named:"icon-vimeo")!)
        let socialItem5 = SocialItem(name:"Instagram", summary: "Instagram is an online mobile photo-sharing, video-sharing and social networking service that enables its users to take pictures and videos, and share them on a variety of social networking platforms, such as Facebook, Twitter, Tumblr and Flickr.", color: UIColor(red: 0.325, green: 0.498, blue: 0.635, alpha: 1), image: UIImage(named: "icon-instagram")!)
        
        return [socialItem1,socialItem2,socialItem3,socialItem4,socialItem5]
        
    }
    
    
}
