//
//  ViewController.swift
//  AnimatedCheckbox
//
//  Created by Yasmine on 6/16/19.
//  Copyright © 2019 Yasmine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    @IBAction func checkedTapped(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations:{ sender.transform = CGAffineTransform(scaleX: 0.1, y:0.1)}) { (success) in
            sender.isSelected = !sender.isSelected
       
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.transform = .identity
            }, completion: nil)
        }
        
//        if sender.isSelected
//        {
//            sender.isSelected = false
//        }
//        else{
//            sender.isSelected = true
//        }
    }
    
}

