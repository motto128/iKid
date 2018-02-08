//
//  FirstViewController.swift
//  ikid
//
//  Created by Joe Motto on 2/7/18.
//  Copyright © 2018 Joe Motto. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstQ: UITextView!
    @IBOutlet weak var firstA: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstA.isEditable = false
        firstQ.isEditable = false
        
        firstA.layer.cornerRadius = 10
        firstA.clipsToBounds = true
        
        firstQ.layer.cornerRadius = 10
        firstQ.clipsToBounds = true
        
        firstA.isHidden = true
        firstQ.isHidden = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func next(_ sender: Any) {
        if firstA.isHidden {
            UIView.transition(with: firstQ, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: { self.firstQ.isHidden = true }, completion: nil)
            UIView.transition(with: firstA, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: { self.firstA.isHidden = false }, completion: nil)
        } else {
            UIView.transition(with: firstQ, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: { self.firstQ.isHidden = false }, completion: nil)
            UIView.transition(with: firstA, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: { self.firstA.isHidden = true }, completion: nil)        }
    }
    
}

