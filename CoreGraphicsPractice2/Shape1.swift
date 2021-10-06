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
    
    let shapeBackgroundColor = UIColor.lightGray
    let shapeShadowingColor = UIColor.darkGray
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {
            fatalError("\(#function):\(#line) Failed to get current context.")
        }
        
        context.setFillColor(shapeBackgroundColor.cgColor)
        context.fill(rect)
        
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
        backgroundShapePath.addLine(to: CGPoint(x: 1, y: 2))
        backgroundShapePath.addLine(to: CGPoint(x: 0, y: 4))
        backgroundShapePath.addLine(to: CGPoint(x: 1, y: 6))
        backgroundShapePath.addLine(to: CGPoint(x: 0, y: 8))
        backgroundShapePath.addLine(to: CGPoint(x: 1, y: 10))
        backgroundShapePath.addLine(to: CGPoint(x: 0, y: 12))
        backgroundShapePath.addLine(to: CGPoint(x: 1, y: 14))
        backgroundShapePath.addLine(to: CGPoint(x: 0, y: 16))
        backgroundShapePath.addLine(to: CGPoint(x: 1, y: 18))
        backgroundShapePath.addLine(to: CGPoint(x: 0, y: 20))
        backgroundShapePath.addLine(to: CGPoint(x: 10, y: 20))
        backgroundShapePath.addLine(to: CGPoint(x: 9, y: 18))
        backgroundShapePath.addLine(to: CGPoint(x: 10, y: 16))
        backgroundShapePath.addLine(to: CGPoint(x: 9, y: 14))
        backgroundShapePath.addLine(to: CGPoint(x: 10, y: 12))
        backgroundShapePath.addLine(to: CGPoint(x: 9, y: 10))
        backgroundShapePath.addLine(to: CGPoint(x: 10, y: 8))
        backgroundShapePath.addLine(to: CGPoint(x: 9, y: 6))
        backgroundShapePath.addLine(to: CGPoint(x: 10, y: 4))
        backgroundShapePath.addLine(to: CGPoint(x: 9, y: 2))
        backgroundShapePath.addLine(to: CGPoint(x: 10, y: 0))
        backgroundShapePath.close()
        
        UIGraphicsEndImageContext()
        context.fill(rect)
        
    } // End func
    
    
    
}
