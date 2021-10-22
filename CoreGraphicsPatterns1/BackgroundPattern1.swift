//
//  BackgroundPattern1.swift
//  CoreGraphicsPatterns1
//
//  Created by Caroline LaDouce on 10/22/21.
//

import UIKit

class BackgroundPattern1: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var lineColor: UIColor = .black
    var patternSize: CGFloat = 300
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {
            fatalError("Failed to get current context.")
        }
        
        context.setFillColor(lineColor.cgColor)
        context.fill(rect)
    }

}
