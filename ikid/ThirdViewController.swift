//
//  ThirdViewControler.swift
//  ikid
//
//  Created by Joe Motto on 2/7/18.
//  Copyright © 2018 Joe Motto. All rights reserved.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var thirdQ: UITextView!
    @IBOutlet weak var thirdA: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thirdA.isEditable = false
        thirdQ.isEditable = false
        
        thirdA.layer.cornerRadius = 10
        thirdA.clipsToBounds = true
        
        thirdQ.layer.cornerRadius = 10
        thirdQ.clipsToBounds = true
        
        thirdA.isHidden = true
        thirdQ.isHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func next(_ sender: Any) {
        if thirdA.isHidden {
            UIView.transition(with: thirdQ, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: { self.thirdQ.isHidden = true }, completion: nil)
            UIView.transition(with: thirdA, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: { self.thirdA.isHidden = false }, completion: nil)
        } else {
            UIView.transition(with: thirdQ, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: { self.thirdQ.isHidden = false }, completion: nil)
            UIView.transition(with: thirdA, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: { self.thirdA.isHidden = true }, completion: nil)        }
    }
}
