//
//  ZoomingIconTransition.swift
//  ZoomingIcons
//
//  Created by ricardo antonio cacho on 2015-08-06.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

import UIKit

class ZoomingIconTransition: NSObject, UIViewControllerAnimatedTransitioning, UINavigationControllerDelegate {
    
    let kZoomingIconTransitionDuration:NSTimeInterval = 1.0
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        return kZoomingIconTransitionDuration
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        let toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)
        let fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)
        
        let transitionDurationConstant = transitionDuration(transitionContext)
        
        let containerView = transitionContext.containerView()
        
        containerView.addSubview(fromViewController!.view)
        containerView.addSubview(toViewController!.view)
        toViewController!.view.alpha = 0
        
        UIView.animateWithDuration(transitionDurationConstant, animations:{() in toViewController?.view.alpha = 1}, completion:{ (Bool) in
            transitionContext.completeTransition(true)
            })
    }
    
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return self
    }
    
}