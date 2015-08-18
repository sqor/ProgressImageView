//
//  ViewController.swift
//  ProgressImageViewExample
//
//  Created by Pablo Villar on 8/14/15.
//  Copyright (c) 2015 SQOR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: ProgressImageView!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.performAnimation()
    }

    @IBAction func tryAgain(sender: UIButton) {
        self.performAnimation()
    }
    
    private func performAnimation() {
        self.button.hidden = true
        self.infoLabel.text = "Loading..."
        self.animateProgress {
            self.infoLabel.text = "Completed!"
            self.button.hidden = false
        }
    }
    
    private func animateProgress(completion: () -> ()) {
        self.imageView.progress = 0
        UIView.animateWithDuration(5.0, delay: 0.4, options: UIViewAnimationOptions.CurveLinear, animations: { () -> Void in
            self.imageView.progress = 1
            }, completion: { (var completed) -> Void in
                completion()
            }
        )
    }
}

