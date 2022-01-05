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
    var altLineColor: UIColor = .black
    var altFillColor: UIColor = .white
    
    var centerLineColor: UIColor = .orange
    var patternSize: CGFloat = 300
    
    let patternWidth: CGFloat = 300
    let patternHeight: CGFloat = 330
    
    let drawingLineWidth: CGFloat = 4.0
    
    let lineLengthShift: CGFloat = 1
    
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else {
            fatalError("\(#function):\(#line) Failed to get current context.")
        }
        
        context.setFillColor(UIColor.black.cgColor)
        
        context.fill(rect)
        
        
        // Draw first set of diagonal lines
        // Left side is high point, right side is low point
        let centerDiagonalLine = UIBezierPath()
        centerDiagonalLine.lineWidth = drawingLineWidth
        centerDiagonalLine.move(to: CGPoint(
            x: 0,
            y: 0
        ))
        
        centerDiagonalLine.addLine(to: CGPoint(
            x: bounds.width,
            y: bounds.height
        ))
        
        lineColor.setStroke()
        centerDiagonalLine.stroke()
        
        
        let tMidDiagonalLine = UIBezierPath()
        tMidDiagonalLine.lineWidth = drawingLineWidth
        tMidDiagonalLine.move(to: CGPoint(
            x: bounds.width/2,
            y: -(lineLengthShift)
        ))
        
        tMidDiagonalLine.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height/2
        ))
        
        tMidDiagonalLine.stroke()
        
        let tDLLowerQuarter = UIBezierPath()
        tDLLowerQuarter.lineWidth = drawingLineWidth
        tDLLowerQuarter.move(to: CGPoint(
            x: bounds.width/4,
            y: -(lineLengthShift)
        ))
        
        tDLLowerQuarter.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 3/4
        ))
        tDLLowerQuarter.stroke()
        
        
        let tDLUpperQuarter = UIBezierPath()
        tDLUpperQuarter.lineWidth = drawingLineWidth
        tDLUpperQuarter.move(to: CGPoint(
            x: bounds.width * 3/4,
            y: -(lineLengthShift)
        ))
        
        tDLUpperQuarter.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height/4
        ))
        
        tDLUpperQuarter.stroke()
        
        let tDLQ1Mid = UIBezierPath()
        tDLQ1Mid.lineWidth = drawingLineWidth
        tDLQ1Mid.move(to: CGPoint(
            x: bounds.width * 1/8,
            y: -(lineLengthShift)
        ))
        
        tDLQ1Mid.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 7/8
        ))
        
        tDLQ1Mid.stroke()
        
        
        let tDLQ1Lower = UIBezierPath()
        tDLQ1Lower.lineWidth = drawingLineWidth
        tDLQ1Lower.move(to: CGPoint(
            x: bounds.width * 1/16,
            y: -(lineLengthShift)
        ))
        
        tDLQ1Lower.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 15/16
        ))
        
        tDLQ1Lower.stroke()
        
        
        let tDLQ1Upper = UIBezierPath()
        tDLQ1Upper.lineWidth = drawingLineWidth
        tDLQ1Upper.move(to: CGPoint(
            x: bounds.width * 3/16,
            y: -(lineLengthShift)
        ))
        
        tDLQ1Upper.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 13/16
        ))
        
        tDLQ1Upper.stroke()
        
        
        let tDLQ2Lower = UIBezierPath()
        tDLQ2Lower.lineWidth = drawingLineWidth
        tDLQ2Lower.move(to: CGPoint(
            x: bounds.width * 5/16,
            y: -(lineLengthShift)
        ))
        
        tDLQ2Lower.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 11/16
        ))
        
        tDLQ2Lower.stroke()
        
        
        let tDLQ2Mid = UIBezierPath()
        tDLQ2Mid.lineWidth = drawingLineWidth
        tDLQ2Mid.move(to: CGPoint(
            x: bounds.width * 3/8,
            y: -(lineLengthShift)
        ))
        
        tDLQ2Mid.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 5/8
        ))
        
        tDLQ2Mid.stroke()
        
        
        let tDLQ2Upper = UIBezierPath()
        tDLQ2Upper.lineWidth = drawingLineWidth
        tDLQ2Upper.move(to: CGPoint(
            x: bounds.width * 7/16,
            y: -(lineLengthShift)
        ))
        
        tDLQ2Upper.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 9/16
        ))
        
        tDLQ2Upper.stroke()
        
        
        let tDLQ3Lower = UIBezierPath()
        tDLQ3Lower.lineWidth = drawingLineWidth
        tDLQ3Lower.move(to: CGPoint(
            x: bounds.width * 9/16,
            y: -(lineLengthShift)
        ))
        
        tDLQ3Lower.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 7/16
        ))
        
        tDLQ3Lower.stroke()
        
        
        let tDLQ3Mid = UIBezierPath()
        tDLQ3Mid.lineWidth = drawingLineWidth
        tDLQ3Mid.move(to: CGPoint(
            x: bounds.width * 10/16,
            y: -(lineLengthShift)
        ))
        
        tDLQ3Mid.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 6/16
        ))
        
        tDLQ3Mid.stroke()
        
        
        let tDLQ3Upper = UIBezierPath()
        tDLQ3Upper.lineWidth = drawingLineWidth
        tDLQ3Upper.move(to: CGPoint(
            x: bounds.width * 11/16,
            y: -(lineLengthShift)
        ))
        
        tDLQ3Upper.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 5/16
        ))
        
        tDLQ3Upper.stroke()
        
        
        let tDLQ4Lower = UIBezierPath()
        tDLQ4Lower.lineWidth = drawingLineWidth
        tDLQ4Lower.move(to: CGPoint(
            x: bounds.width * 13/16,
            y: -(lineLengthShift)
        ))
        
        tDLQ4Lower.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 3/16
        ))
        
        tDLQ4Lower.stroke()
        
        
        let tDLQ4Mid = UIBezierPath()
        tDLQ4Mid.lineWidth = drawingLineWidth
        tDLQ4Mid.move(to: CGPoint(
            x: bounds.width * 14/16,
            y: -(lineLengthShift)
        ))
        
        tDLQ4Mid.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 2/16
        ))
        
        tDLQ4Mid.stroke()
        
        
        let tDLQ4Upper = UIBezierPath()
        tDLQ4Upper.lineWidth = drawingLineWidth
        tDLQ4Upper.move(to: CGPoint(
            x:  bounds.width * 15/16,
            y: -(lineLengthShift)
        ))
        
        tDLQ4Upper.addLine(to: CGPoint(
            x: bounds.width + lineLengthShift,
            y: bounds.height * 1/16
        ))
        
        tDLQ4Upper.stroke()
        
        
        let tDLLQ1Lower = UIBezierPath()
        tDLLQ1Lower.lineWidth = drawingLineWidth
        tDLLQ1Lower.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 15/16
        ))
        
        tDLLQ1Lower.addLine(to: CGPoint(
            x: bounds.width * 1/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ1Lower.stroke()
        
        
        let tDLLQ1Mid = UIBezierPath()
        tDLLQ1Mid.lineWidth = drawingLineWidth
        tDLLQ1Mid.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 14/16
        ))
        
        tDLLQ1Mid.addLine(to: CGPoint(
            x: bounds.width * 2/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ1Mid.stroke()
        
        
        let tDLLQ1Upper = UIBezierPath()
        tDLLQ1Upper.lineWidth = drawingLineWidth
        tDLLQ1Upper.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 13/16
        ))
        
        tDLLQ1Upper.addLine(to: CGPoint(
            x: bounds.width * 3/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ1Upper.stroke()
        
        
        let tDLLQ1Line = UIBezierPath()
        tDLLQ1Line.lineWidth = drawingLineWidth
        tDLLQ1Line.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 12/16
        ))
        
        tDLLQ1Line.addLine(to: CGPoint(
            x: bounds.width * 4/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ1Line.stroke()
        
        
        let tDLLQ2Lower = UIBezierPath()
        tDLLQ2Lower.lineWidth = drawingLineWidth
        tDLLQ2Lower.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 11/16
        ))
        
        tDLLQ2Lower.addLine(to: CGPoint(
            x: bounds.width * 5/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ2Lower.stroke()
        
        
        let tDLLQ2Mid = UIBezierPath()
        tDLLQ2Mid.lineWidth = drawingLineWidth
        tDLLQ2Mid.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 10/16
        ))
        
        tDLLQ2Mid.addLine(to: CGPoint(
            x: bounds.width * 6/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ2Mid.stroke()
        
        
        let tDLLQ2Line = UIBezierPath()
        tDLLQ2Line.lineWidth = drawingLineWidth
        tDLLQ2Line.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 9/16
        ))
        
        tDLLQ2Line.addLine(to: CGPoint(
            x: bounds.width * 7/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ2Line.stroke()
        
        
        let tDLLQ3Lower = UIBezierPath()
        tDLLQ3Lower.lineWidth = drawingLineWidth
        tDLLQ3Lower.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 8/16
        ))
        
        tDLLQ3Lower.addLine(to: CGPoint(
            x: bounds.width * 8/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ3Lower.stroke()
        
        
        let tDLLQ3Mid = UIBezierPath()
        tDLLQ3Mid.lineWidth = drawingLineWidth
        tDLLQ3Mid.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 7/16
        ))
        
        tDLLQ3Mid.addLine(to: CGPoint(
            x: bounds.width * 9/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ3Mid.stroke()
        
        
        let tDLLQ3Upper = UIBezierPath()
        tDLLQ3Upper.lineWidth = drawingLineWidth
        tDLLQ3Upper.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 6/16
        ))
        
        tDLLQ3Upper.addLine(to: CGPoint(
            x: bounds.width * 10/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ3Upper.stroke()
        
        
        let tDLLQ3Line = UIBezierPath()
        tDLLQ3Line.lineWidth = drawingLineWidth
        tDLLQ3Line.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 5/16
        ))
        
        tDLLQ3Line.addLine(to: CGPoint(
            x: bounds.width * 11/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ3Line.stroke()
        
        
        let tDLLQ4Lower = UIBezierPath()
        tDLLQ4Lower.lineWidth = drawingLineWidth
        tDLLQ4Lower.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 4/16
        ))
        
        tDLLQ4Lower.addLine(to: CGPoint(
            x: bounds.width * 12/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ4Lower.stroke()
        
        
        let tDLLQ4Mid = UIBezierPath()
        tDLLQ4Mid.lineWidth = drawingLineWidth
        tDLLQ4Mid.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 3/16
        ))
        
        tDLLQ4Mid.addLine(to: CGPoint(
            x: bounds.width * 13/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ4Mid.stroke()
        
        
        let tDLLQ4Upper = UIBezierPath()
        tDLLQ4Upper.lineWidth = drawingLineWidth
        tDLLQ4Upper.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 2/16
        ))
        
        tDLLQ4Upper.addLine(to: CGPoint(
            x: bounds.width * 14/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ4Upper.stroke()
        
        
        let tDLLQ4Line = UIBezierPath()
        tDLLQ4Line.lineWidth = drawingLineWidth
        tDLLQ4Line.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 1/16
        ))
        
        tDLLQ4Line.addLine(to: CGPoint(
            x: bounds.width * 15/16,
            y: bounds.height + lineLengthShift
        ))
        
        tDLLQ4Line.stroke()
        
        
                
        // Set up placeholders for coordinates for drawing oval shape
        
        let startAngle: CGFloat = .pi
        let endAngle: CGFloat = .pi * 2
        
        let mainTopCenterPoint = CGPoint(x: (bounds.width / 2), y: (bounds.height / 15) * (6.25 - 0.625 - 0.3125))
        let mainBottomCenterPoint = CGPoint(x: (bounds.width / 2), y: (bounds.height / 15) * (8.75 + 0.625 + 0.3125))
        
        let innerRadius = (mainBottomCenterPoint.y - mainTopCenterPoint.y)
        let leftTopPointDifference = mainTopCenterPoint.x - innerRadius
        let leftBottomPointDifference = mainBottomCenterPoint.x - innerRadius
        
        let leftTopPoint = CGPoint(x: leftTopPointDifference, y: mainTopCenterPoint.y)
        let leftBottomPoint = CGPoint(x: leftBottomPointDifference, y: mainBottomCenterPoint.y)
        
        let rightTopPointDifference = mainTopCenterPoint.x + innerRadius
        let rightBottomPointDifference = mainBottomCenterPoint.x + innerRadius
        
        let rightTopPoint = CGPoint(x: rightTopPointDifference, y: mainTopCenterPoint.y)
        let rightBottomPoint = CGPoint(x: rightBottomPointDifference, y: mainBottomCenterPoint.y)
        
        
        // Draw oval shape
        let ovalShape = UIBezierPath()
        ovalShape.lineWidth = drawingLineWidth
        ovalShape.move(to: CGPoint(x: leftTopPoint.x, y: leftTopPoint.y))
        ovalShape.addArc(
            withCenter: mainTopCenterPoint,
            radius: innerRadius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true
        )
        
        ovalShape.addLine(to: CGPoint(x: rightTopPoint.x, y: rightTopPoint.y))
        ovalShape.addLine(to: CGPoint(x: rightBottomPoint.x, y: rightBottomPoint.y))
        ovalShape.addArc(
            withCenter: mainBottomCenterPoint,
            radius: innerRadius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: false
        )
        
        ovalShape.addLine(to: CGPoint(x: leftBottomPoint.x, y: leftBottomPoint.y))
        ovalShape.addLine(to: CGPoint(x: leftTopPoint.x, y: leftTopPoint.y))
        ovalShape.close()
        
        // Stroke & clip oval shape
        centerLineColor.setStroke()
        ovalShape.lineWidth = drawingLineWidth
        context.saveGState()
        ovalShape.addClip()
        
        
        
        // Add contrasting background color underlay to oval shape
        let rectangleOverlay = UIBezierPath(
            rect: CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height)
        )
        altFillColor.setFill()
        rectangleOverlay.fill()
        
        
        
        // Draw alt lines
        // Top of line is right side, bottom of line is left
        
        altLineColor.setStroke()
        
        let altDiagonalCenterLine = UIBezierPath()
        altDiagonalCenterLine.lineWidth = drawingLineWidth
        altDiagonalCenterLine.move(to: CGPoint(
            x: 0,
            y: bounds.height
        ))
        
        altDiagonalCenterLine.addLine(to: CGPoint(
            x: bounds.width,
            y: 0
        ))
        
        altDiagonalCenterLine.stroke()
        
        let altDiagonalQ1Upper = UIBezierPath()
        altDiagonalQ1Upper.lineWidth = drawingLineWidth
        altDiagonalQ1Upper.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 1/16
        ))
        
        altDiagonalQ1Upper.addLine(to: CGPoint(
            x: bounds.width * 1/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ1Upper.stroke()
        
        
        let altDiagonalQ1Mid = UIBezierPath()
        altDiagonalQ1Mid.lineWidth = drawingLineWidth
        altDiagonalQ1Mid.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 2/16
        ))
        
        altDiagonalQ1Mid.addLine(to: CGPoint(
            x: bounds.width * 2/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ1Mid.stroke()
        
        
        let altDiagonalQ1Lower = UIBezierPath()
        altDiagonalQ1Lower.lineWidth = drawingLineWidth
        altDiagonalQ1Lower.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 3/16
        ))
        
        altDiagonalQ1Lower.addLine(to: CGPoint(
            x: bounds.width * 3/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ1Lower.stroke()
        
        let altDiagonalQ1Line = UIBezierPath()
        altDiagonalQ1Line.lineWidth = drawingLineWidth
        altDiagonalQ1Line.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 4/16
        ))
        
        altDiagonalQ1Line.addLine(to: CGPoint(
            x: bounds.width * 4/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ1Line.stroke()
        
        
        let altDiagonalQ2Upper = UIBezierPath()
        altDiagonalQ2Upper.lineWidth = drawingLineWidth
        altDiagonalQ2Upper.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 5/16
        ))
        
        altDiagonalQ2Upper.addLine(to: CGPoint(
            x: bounds.width * 5/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ2Upper.stroke()
        
        
        let altDiagonalQ2Mid = UIBezierPath()
        altDiagonalQ2Mid.lineWidth = drawingLineWidth
        altDiagonalQ2Mid.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 6/16
        ))
        
        altDiagonalQ2Mid.addLine(to: CGPoint(
            x: bounds.width * 6/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ2Mid.stroke()
        
        
        let altDiagonalQ2Lower = UIBezierPath()
        altDiagonalQ2Lower.lineWidth = drawingLineWidth
        altDiagonalQ2Lower.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 7/16
        ))
        
        altDiagonalQ2Lower.addLine(to: CGPoint(
            x: bounds.width * 7/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ2Lower.stroke()
        
        
        let altDiagonalQ2Line = UIBezierPath()
        altDiagonalQ2Line.lineWidth = drawingLineWidth
        altDiagonalQ2Line.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 8/16
        ))
        
        altDiagonalQ2Line.addLine(to: CGPoint(
            x: bounds.width * 8/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ2Line.stroke()
        
        let altDiagonalQ3Upper = UIBezierPath()
        altDiagonalQ3Upper.lineWidth = drawingLineWidth
        altDiagonalQ3Upper.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 9/16
        ))
        
        altDiagonalQ3Upper.addLine(to: CGPoint(
            x: bounds.width * 9/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ3Upper.stroke()
        
        
        let altDiagonalQ3Mid = UIBezierPath()
        altDiagonalQ3Mid.lineWidth = drawingLineWidth
        altDiagonalQ3Mid.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 10/16
        ))
        
        altDiagonalQ3Mid.addLine(to: CGPoint(
            x: bounds.width * 10/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ3Mid.stroke()
        
        
        let altDiagonalQ3Lower = UIBezierPath()
        altDiagonalQ3Lower.lineWidth = drawingLineWidth
        altDiagonalQ3Lower.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 11/16
        ))
        
        altDiagonalQ3Lower.addLine(to: CGPoint(
            x: bounds.width * 11/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ3Lower.stroke()
        
        
        let altDiagonalQ4Upper = UIBezierPath()
        altDiagonalQ4Upper.lineWidth = drawingLineWidth
        altDiagonalQ4Upper.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 12/16
        ))
        
        altDiagonalQ4Upper.addLine(to: CGPoint(
            x: bounds.width * 12/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ4Upper.stroke()
        
        
        let altDiagonalQ4Mid = UIBezierPath()
        altDiagonalQ4Mid.lineWidth = drawingLineWidth
        altDiagonalQ4Mid.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 13/16
        ))
        
        altDiagonalQ4Mid.addLine(to: CGPoint(
            x: bounds.width * 13/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ4Mid.stroke()
        
        
        let altDiagonalQ4Lower = UIBezierPath()
        altDiagonalQ4Lower.lineWidth = drawingLineWidth
        altDiagonalQ4Lower.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 14/16
        ))
        
        altDiagonalQ4Lower.addLine(to: CGPoint(
            x: bounds.width * 14/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ4Lower.stroke()
        
        
        let altDiagonalQ4Line = UIBezierPath()
        altDiagonalQ4Line.lineWidth = drawingLineWidth
        altDiagonalQ4Line.move(to: CGPoint(
            x: -(lineLengthShift),
            y: bounds.height * 15/16
        ))
        
        altDiagonalQ4Line.addLine(to: CGPoint(
            x: bounds.width * 15/16,
            y: -(lineLengthShift)
        ))
        
        altDiagonalQ4Line.stroke()
        
        
        let altDiagonalLowerQ1Upper = UIBezierPath()
        altDiagonalLowerQ1Upper.lineWidth = drawingLineWidth
        altDiagonalLowerQ1Upper.move(to: CGPoint(
            x: bounds.width * 1/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ1Upper.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 1/16
        ))
        
        altDiagonalLowerQ1Upper.stroke()
        
        
        let altDiagonalLowerQ1Mid = UIBezierPath()
        altDiagonalLowerQ1Mid.lineWidth = drawingLineWidth
        altDiagonalLowerQ1Mid.move(to: CGPoint(
            x: bounds.width * 2/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ1Mid.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 2/16
        ))
        
        altDiagonalLowerQ1Mid.stroke()
        
        
        let altDiagonalLowerQ1Lower = UIBezierPath()
        altDiagonalLowerQ1Lower.lineWidth = drawingLineWidth
        altDiagonalLowerQ1Lower.move(to: CGPoint(
            x: bounds.width * 3/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ1Lower.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 3/16
        ))
        
        altDiagonalLowerQ1Lower.stroke()
        
        
        let altDiagonalLowerQ1Line = UIBezierPath()
        altDiagonalLowerQ1Line.lineWidth = drawingLineWidth
        altDiagonalLowerQ1Line.move(to: CGPoint(
            x: bounds.width * 4/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ1Line.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 4/16
        ))
        
        altDiagonalLowerQ1Line.stroke()
        
        
        let altDiagonalLowerQ2Upper = UIBezierPath()
        altDiagonalLowerQ2Upper.lineWidth = drawingLineWidth
        altDiagonalLowerQ2Upper.move(to: CGPoint(
            x: bounds.width * 5/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ2Upper.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 5/16
        ))
        
        altDiagonalLowerQ2Upper.stroke()
        
        
        let altDiagonalLowerQ2Mid = UIBezierPath()
        altDiagonalLowerQ2Mid.lineWidth = drawingLineWidth
        altDiagonalLowerQ2Mid.move(to: CGPoint(
            x: bounds.width * 6/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ2Mid.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 6/16
        ))
        
        altDiagonalLowerQ2Mid.stroke()
        
        
        let altDiagonalLowerQ2Lower = UIBezierPath()
        altDiagonalLowerQ2Lower.lineWidth = drawingLineWidth
        altDiagonalLowerQ2Lower.move(to: CGPoint(
            x: bounds.width * 7/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ2Lower.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 7/16
        ))
        
        altDiagonalLowerQ2Lower.stroke()
        
        
        let altDiagonalLowerQ2Line = UIBezierPath()
        altDiagonalLowerQ2Line.lineWidth = drawingLineWidth
        altDiagonalLowerQ2Line.move(to: CGPoint(
            x: bounds.width * 8/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ2Line.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 8/16
        ))
        
        altDiagonalLowerQ2Line.stroke()
        
        
        let altDiagonalLowerQ3Upper = UIBezierPath()
        altDiagonalLowerQ3Upper.lineWidth = drawingLineWidth
        altDiagonalLowerQ3Upper.move(to: CGPoint(
            x: bounds.width * 9/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ3Upper.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 9/16
        ))
        
        altDiagonalLowerQ3Upper.stroke()
        
        let altDiagonalLowerQ3Mid = UIBezierPath()
        altDiagonalLowerQ3Mid.lineWidth = drawingLineWidth
        altDiagonalLowerQ3Mid.move(to: CGPoint(
            x: bounds.width * 10/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ3Mid.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 10/16
        ))
        
        altDiagonalLowerQ3Mid.stroke()
        
        
        let altDiagonalLowerQ3Lower = UIBezierPath()
        altDiagonalLowerQ3Lower.lineWidth = drawingLineWidth
        altDiagonalLowerQ3Lower.move(to: CGPoint(
            x: bounds.width * 11/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ3Lower.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 11/16
        ))
        
        altDiagonalLowerQ3Lower.stroke()
        
        
        let altDiagonalLowerQ3Line = UIBezierPath()
        altDiagonalLowerQ3Line.lineWidth = drawingLineWidth
        altDiagonalLowerQ3Line.move(to: CGPoint(
            x: bounds.width * 12/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ3Line.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 12/16
        ))
        
        altDiagonalLowerQ3Line.stroke()
        
        
        let altDiagonalLowerQ4Upper = UIBezierPath()
        altDiagonalLowerQ4Upper.lineWidth = drawingLineWidth
        altDiagonalLowerQ4Upper.move(to: CGPoint(
            x: bounds.width * 13/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ4Upper.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 13/16
        ))
        
        altDiagonalLowerQ4Upper.stroke()
        
        
        let altDiagonalLowerQ4Mid = UIBezierPath()
        altDiagonalLowerQ4Mid.lineWidth = drawingLineWidth
        altDiagonalLowerQ4Mid.move(to: CGPoint(
            x: bounds.width * 14/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ4Mid.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 14/16
        ))
        
        altDiagonalLowerQ4Mid.stroke()
        
        
        let altDiagonalLowerQ4Lower = UIBezierPath()
        altDiagonalLowerQ4Lower.lineWidth = drawingLineWidth
        altDiagonalLowerQ4Lower.move(to: CGPoint(
            x: bounds.width * 15/16,
            y: bounds.height + (lineLengthShift)
        ))
        
        altDiagonalLowerQ4Lower.addLine(to: CGPoint(
            x: bounds.width + (lineLengthShift),
            y: bounds.height * 15/16
        ))
        
        altDiagonalLowerQ4Lower.stroke()
        
        
        
        context.restoreGState()
        
    }
    
}
