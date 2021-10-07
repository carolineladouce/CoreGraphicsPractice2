//
//  Shape2.swift
//  CoreGraphicsPractice2
//
//  Created by Caroline LaDouce on 10/6/21.
//

import UIKit

class Shape2: UIImageView {
    
    lazy var shape2Image = createShape2Image()
    
    func showShape2(show: Bool) {
        image = (show == true) ? shape2Image : nil
    }
    
    func createShape2Image() -> UIImage {
        debugPrint("creating Medal Image")
        
        let drawingSize = CGSize(width: 100, height: 200)
        
        UIGraphicsBeginImageContextWithOptions(drawingSize, false, 0.0)
        
        let baseColor = UIColor.lightGray
        
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
        
        baseColor.setFill()
        backgroundShapePath.fill()
        
        guard let image = UIGraphicsGetImageFromCurrentImageContext()
        else { fatalError("""
    \(#function):\(#line) Failed to \
    get an image from current context.
    """)
        }
        
        UIGraphicsEndImageContext()
        return image
        
    } // End func
    
}
