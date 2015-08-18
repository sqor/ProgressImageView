//
//  ProgressImageView.swift
//
//  Created by Pablo Villar on 8/11/15.
//  Copyright (c) 2015 Sqor, Inc. All rights reserved.
//

import UIKit

@IBDesignable
class ProgressImageView: UIImageView {
    
    // MARK: - Properties
    
    @IBInspectable var overlayAlpha: CGFloat = 0.7 {
        didSet {
            self.overlay?.alpha = overlayAlpha
        }
    }
    
    @IBInspectable var overlayColor: UIColor = UIColor.whiteColor() {
        didSet {
            self.overlay?.backgroundColor = overlayColor
        }
    }
    
    @IBInspectable var progress: CGFloat = 1 {
        didSet {
            let value = max(0, min(progress, 1))
            var frame = self.bounds
            frame.origin.x = frame.size.width * value
            frame.size.width *= 1 - value
            self.overlay?.frame = frame
        }
    }
    
    // MARK: - Lifecycle
    
    override func prepareForInterfaceBuilder() {
        self.initializeOverlay()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initializeOverlay()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initializeOverlay()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.initializeOverlay()
        self.progress = 1
    }
    
    // MARK: - Private
    
    private var overlay: UIView?

    private func initializeOverlay() {
        if self.overlay == nil {
            self.overlay = UIView(frame: self.bounds)
            self.addSubview(self.overlay!)
        }
        let overlay = self.overlay!
        overlay.backgroundColor = self.overlayColor
        overlay.alpha = self.overlayAlpha
    }

}
