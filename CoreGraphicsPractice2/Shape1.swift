//
//  Button1.swift
//  CoreGraphicsPractice2
//
//  Created by Caroline LaDouce on 10/5/21.
//

import UIKit

class Shape1: UIView {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    let shapeBackgroundColor = UIColor.orange
    let shapeBaseColor = UIColor.lightGray
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {
            fatalError("\(#function):\(#line) Failed to get current context.")
        }
        

        let drawingSize = CGSize(width: 100, height: 200)
        
        UIGraphicsBeginImageContextWithOptions(drawingSize, true, 0.0)
        
        guard let drawingContext = UIGraphicsGetCurrentContext() else {
            fatalError("\(#function):\(#line) Failed to get current context.")
        }
        
        shapeBackgroundColor.setFill()
        drawingContext.fill(CGRect(x: 0, y: 0, width: drawingSize.width, height: drawingSize.height))
        
        // Layout the background shape path
        let backgroundShapePath = UIBezierPath()
        backgroundShapePath.move(to: CGPoint(x: 0, y: 0))
        backgroundShapePath.addLine(to: CGPoint(x: 10, y: 20))
        backgroundShapePath.addLine(to: CGPoint(x: 0, y: 40))
        backgroundShapePath.addLine(to: CGPoint(x: 10, y: 60))
        backgroundShapePath.addLine(to: CGPoint(x: 0, y: 80))
        backgroundShapePath.addLine(to: CGPoint(x: 10, y: 100))
        backgroundShapePath.addLine(to: CGPoint(x: 0, y: 120))
        backgroundShapePath.addLine(to: CGPoint(x: 10, y: 140))
        backgroundShapePath.addLine(to: CGPoint(x: 0, y: 160))
        backgroundShapePath.addLine(to: CGPoint(x: 10, y: 180))
        backgroundShapePath.addLine(to: CGPoint(x: 0, y: 200))
        backgroundShapePath.addLine(to: CGPoint(x: 100, y: 200))
        backgroundShapePath.addLine(to: CGPoint(x: 90, y: 180))
        backgroundShapePath.addLine(to: CGPoint(x: 100, y: 160))
        backgroundShapePath.addLine(to: CGPoint(x: 90, y: 140))
        backgroundShapePath.addLine(to: CGPoint(x: 100, y: 120))
        backgroundShapePath.addLine(to: CGPoint(x: 90, y: 100))
        backgroundShapePath.addLine(to: CGPoint(x: 100, y: 80))
        backgroundShapePath.addLine(to: CGPoint(x: 90, y: 60))
        backgroundShapePath.addLine(to: CGPoint(x: 100, y: 40))
        backgroundShapePath.addLine(to: CGPoint(x: 90, y: 20))
        backgroundShapePath.addLine(to: CGPoint(x: 100, y: 0))
        backgroundShapePath.close()

        shapeBaseColor.setFill()
        backgroundShapePath.fill()
        
        guard let image = UIGraphicsGetImageFromCurrentImageContext()
                else { fatalError("""
    \(#function):\(#line) Failed to \
    get an image from current context.
    """)
        }
        
        UIGraphicsEndImageContext()
        
        UIColor(patternImage: image).setFill()
        context.fill(rect)
        
    } // End func
    
    
    
}
