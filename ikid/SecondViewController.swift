//
//  SecondViewController.swift
//  ikid
//
//  Created by Joe Motto on 2/7/18.
//  Copyright © 2018 Joe Motto. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secA: UITextView!
    @IBOutlet weak var secB: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secB.isEditable = false
        secA.isEditable = false
        
        secB.layer.cornerRadius = 10
        secB.clipsToBounds = true
        
        secA.layer.cornerRadius = 10
        secA.clipsToBounds = true
        
        secB.isHidden = true
        secA.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func next(_ sender: Any) {
        if secB.isHidden {
            UIView.transition(with: secA, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: { self.secA.isHidden = true }, completion: nil)
            UIView.transition(with: secB, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: { self.secB.isHidden = false }, completion: nil)
        } else {
            UIView.transition(with: secA, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: { self.secA.isHidden = false }, completion: nil)
            UIView.transition(with: secB, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: { self.secB.isHidden = true }, completion: nil)
            
        }
    }
    
}

