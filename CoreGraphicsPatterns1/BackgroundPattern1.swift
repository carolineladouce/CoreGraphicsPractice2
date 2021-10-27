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
    
    var lineColor: UIColor = .white
    var fillColor: UIColor = .black
    var patternSize: CGFloat = 300
    
    let patternWidth: CGFloat = 300
    let patternHeight: CGFloat = 330
    
    let drawingLineWidth: CGFloat = 4.0
    
    
    override func draw(_ rect: CGRect) {
        
        // Draw the vertical line leading to arc
        let verticalPath = UIBezierPath()
        verticalPath.lineWidth = drawingLineWidth

        verticalPath.move(to: CGPoint (
            x: (bounds.width / 15) * 14.2,
            y: bounds.height
        ))

        verticalPath.addLine(to: CGPoint(
            x: (bounds.width / 15) * 14.2,
            y: (bounds.height / 15) * 14.5
        ))

        lineColor.setStroke()
        verticalPath.stroke()
        
        
        
        // Draw the arc
//        let centerPoint = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        let centerPoint = CGPoint(x: (bounds.width / 15) * 14.75, y: (bounds.height / 15) * 14.5)
//        let radius = max(bounds.width, bounds.height)
        let radius = max(bounds.width / 15, bounds.height / 15)
        
        let startAngle: CGFloat = .pi
        let endAngle: CGFloat = .pi * 1.5
        
        let innerPath = UIBezierPath(
            arcCenter: centerPoint,
            radius: radius/2,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true
        )
        
        innerPath.lineWidth = drawingLineWidth
        lineColor.setStroke()
        innerPath.stroke()
        
        
        
        // Draw the horizontal line trailing from arc
        let horizontalPath = UIBezierPath()
        horizontalPath.lineWidth = drawingLineWidth

        horizontalPath.move(to: CGPoint (
            x: (bounds.width / 15) * 14.75,
            y: (bounds.height / 15) * 14
        ))

        horizontalPath.addLine(to: CGPoint(
            x: bounds.width,
            y: (bounds.height / 15) * 14
        ))

        lineColor.setStroke()
        horizontalPath.stroke()
        
        
        
        
        
        
        

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
//
//        let innerOvalPath = UIBezierPath(ovalIn: CGRect(x: 150, y: 150, width: patternSize / 4, height: patternSize / 4))
//
//        innerOvalPath.lineWidth = 4.0
//        lineColor.setStroke()
//        innerOvalPath.stroke()
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
