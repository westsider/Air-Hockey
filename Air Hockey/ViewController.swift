//
//  ViewController.swift
//  Air Hockey
//
//  Created by Warren Hansen on 6/18/18.
//  Copyright © 2018 Warren Hansen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var centerLine: UIView!
    
    @IBOutlet weak var topHalf: UIView!
    
    @IBOutlet weak var bottomHalf: UIView!
    
    @IBOutlet weak var topGoal: UIView!
    
    @IBOutlet weak var bottomGoal: UIView!
    
    @IBOutlet weak var topPaddle: UIView!
    
    @IBOutlet weak var bottomPaddle: UIView!
    
    @IBOutlet weak var puck: UIView!

    var annimator:UIDynamicAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        annimator = UIDynamicAnimator(referenceView: view)
        
//        let gravityBehavior = UIGravityBehavior(items: [puck])
//        gravityBehavior.gravityDirection = CGVector(dx: 0, dy: -1 )
//        annimator.addBehavior(gravityBehavior)
        
        let collisionBehavior = UICollisionBehavior(items: [puck, topPaddle, bottomPaddle])
        collisionBehavior.translatesReferenceBoundsIntoBoundary = true
        annimator.addBehavior(collisionBehavior)
    }
    
    @IBAction func userPannedTopHalf(_ sender: UIPanGestureRecognizer) {
    }
    
    @IBAction func userPannedBottomHalf(_ sender: UIPanGestureRecognizer) {
    }
    


}

