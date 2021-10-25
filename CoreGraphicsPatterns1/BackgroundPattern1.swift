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
    var fillColor: UIColor = .orange
    var patternSize: CGFloat = 300
    
    
    override func draw(_ rect: CGRect) {

//        guard let context = UIGraphicsGetCurrentContext() else {
//            fatalError("\(#function):\(#line) Failed to get current context.")
//        }
//
//        let drawingSize = CGSize(width: patternSize, height: patternSize)
//
//        UIGraphicsBeginImageContextWithOptions(drawingSize, true, 0.0)
//
//        guard let drawingContext = UIGraphicsGetCurrentContext() else {
//            fatalError("\(#function):\(#line) Failed to get current context.")
//        }

//        UIColor.purple.setFill()
//        drawingContext.fill(CGRect(x: 0, y: 0, width: drawingSize.width, height: drawingSize.height))
        
        let innerOvalPath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: patternSize, height: patternSize))
        
        innerOvalPath.lineWidth = 4.0
        fillColor.setStroke()
        innerOvalPath.stroke()
//
//        guard let image = UIGraphicsGetImageFromCurrentImageContext() else { fatalError("""
//    \(#function):\(#line) Failed to \
//    get an image from current context.
//    """)
//        }
//        UIGraphicsEndImageContext()
//
//        UIColor(patternImage: image).setFill()
//        context.fill(rect)
//
        
        
        
//        guard let context = UIGraphicsGetCurrentContext() else {
//            fatalError("Failed to get current context.")
//        }
//
//        context.setFillColor(fillColor.cgColor)
//        context.fill(rect)
//
//        let drawSize = CGSize(width: patternSize, height: patternSize)
//
//        UIGraphicsBeginImageContextWithOptions(drawSize, true, 0.0)
//
//        guard let drawingContext = UIGraphicsGetCurrentContext() else {
//            fatalError("Failed to get current context.")
//        }
//
//
//        drawingContext.fill(CGRect(x: 0, y: 0, width: drawSize.width, height: drawSize.height))
//
//        let innerOvalPath = UIBezierPath(
//            ovalIn: CGRect(x: 50, y: 50, width: 10, height: 15)
//        )
//        innerOvalPath.lineWidth = 4.0
//
//        lineColor.setStroke()
//        innerOvalPath.stroke()
        
        
        
//        UIColor(patternImage: drawingContext).setFill()
//        context.fill(rect)
          
    }

}
