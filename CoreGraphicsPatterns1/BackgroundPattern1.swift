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
        
        
        let startAngle: CGFloat = .pi
        let endAngle: CGFloat = .pi * 2
        
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


//        let tMidDiagonalLine = UIBezierPath()
//        tMidDiagonalLine.lineWidth = drawingLineWidth
//        tMidDiagonalLine.move(to: CGPoint(
//            x: bounds.width/2,
//            y: -(lineLengthShift)
//        ))
//
//        tMidDiagonalLine.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height/2
//        ))
//
//        tMidDiagonalLine.stroke()
//
//        let tDLLowerQuarter = UIBezierPath()
//        tDLLowerQuarter.lineWidth = drawingLineWidth
//        tDLLowerQuarter.move(to: CGPoint(
//            x: bounds.width/4,
//            y: -(lineLengthShift)
//        ))
//
//        tDLLowerQuarter.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 3/4
//        ))
//        tDLLowerQuarter.stroke()
//
//
//        let tDLUpperQuarter = UIBezierPath()
//        tDLUpperQuarter.lineWidth = drawingLineWidth
//        tDLUpperQuarter.move(to: CGPoint(
//            x: bounds.width * 3/4,
//            y: -(lineLengthShift)
//        ))
//
//        tDLUpperQuarter.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height/4
//        ))
//
//        tDLUpperQuarter.stroke()
//
//        let tDLQ1Mid = UIBezierPath()
//        tDLQ1Mid.lineWidth = drawingLineWidth
//        tDLQ1Mid.move(to: CGPoint(
//            x: bounds.width * 1/8,
//            y: -(lineLengthShift)
//        ))
//
//        tDLQ1Mid.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 7/8
//        ))
//
//        tDLQ1Mid.stroke()
//
//
//        let tDLQ1Lower = UIBezierPath()
//        tDLQ1Lower.lineWidth = drawingLineWidth
//        tDLQ1Lower.move(to: CGPoint(
//            x: bounds.width * 1/16,
//            y: -(lineLengthShift)
//        ))
//
//        tDLQ1Lower.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 15/16
//        ))
//
//        tDLQ1Lower.stroke()
//
//
//        let tDLQ1Upper = UIBezierPath()
//        tDLQ1Upper.lineWidth = drawingLineWidth
//        tDLQ1Upper.move(to: CGPoint(
//            x: bounds.width * 3/16,
//            y: -(lineLengthShift)
//        ))
//
//        tDLQ1Upper.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 13/16
//        ))
//
//        tDLQ1Upper.stroke()
//
//
//        let tDLQ2Lower = UIBezierPath()
//        tDLQ2Lower.lineWidth = drawingLineWidth
//        tDLQ2Lower.move(to: CGPoint(
//            x: bounds.width * 5/16,
//            y: -(lineLengthShift)
//        ))
//
//        tDLQ2Lower.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 11/16
//        ))
//
//        tDLQ2Lower.stroke()
//
//
//        let tDLQ2Mid = UIBezierPath()
//        tDLQ2Mid.lineWidth = drawingLineWidth
//        tDLQ2Mid.move(to: CGPoint(
//            x: bounds.width * 3/8,
//            y: -(lineLengthShift)
//        ))
//
//        tDLQ2Mid.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 5/8
//        ))
//
//        tDLQ2Mid.stroke()
//
//
//        let tDLQ2Upper = UIBezierPath()
//        tDLQ2Upper.lineWidth = drawingLineWidth
//        tDLQ2Upper.move(to: CGPoint(
//            x: bounds.width * 7/16,
//            y: -(lineLengthShift)
//        ))
//
//        tDLQ2Upper.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 9/16
//        ))
//
//        tDLQ2Upper.stroke()
//
//
//        let tDLQ3Lower = UIBezierPath()
//        tDLQ3Lower.lineWidth = drawingLineWidth
//        tDLQ3Lower.move(to: CGPoint(
//            x: bounds.width * 9/16,
//            y: -(lineLengthShift)
//        ))
//
//        tDLQ3Lower.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 7/16
//        ))
//
//        tDLQ3Lower.stroke()
//
//
//        let tDLQ3Mid = UIBezierPath()
//        tDLQ3Mid.lineWidth = drawingLineWidth
//        tDLQ3Mid.move(to: CGPoint(
//            x: bounds.width * 10/16,
//            y: -(lineLengthShift)
//        ))
//
//        tDLQ3Mid.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 6/16
//        ))
//
//        tDLQ3Mid.stroke()
//
//
//        let tDLQ3Upper = UIBezierPath()
//        tDLQ3Upper.lineWidth = drawingLineWidth
//        tDLQ3Upper.move(to: CGPoint(
//            x: bounds.width * 11/16,
//            y: -(lineLengthShift)
//        ))
//
//        tDLQ3Upper.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 5/16
//        ))
//
//        tDLQ3Upper.stroke()
//
//
//        let tDLQ4Lower = UIBezierPath()
//        tDLQ4Lower.lineWidth = drawingLineWidth
//        tDLQ4Lower.move(to: CGPoint(
//            x: bounds.width * 13/16,
//            y: -(lineLengthShift)
//        ))
//
//        tDLQ4Lower.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 3/16
//        ))
//
//        tDLQ4Lower.stroke()
//
//
//        let tDLQ4Mid = UIBezierPath()
//        tDLQ4Mid.lineWidth = drawingLineWidth
//        tDLQ4Mid.move(to: CGPoint(
//            x: bounds.width * 14/16,
//            y: -(lineLengthShift)
//        ))
//
//        tDLQ4Mid.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 2/16
//        ))
//
//        tDLQ4Mid.stroke()
//
//
//        let tDLQ4Upper = UIBezierPath()
//        tDLQ4Upper.lineWidth = drawingLineWidth
//        tDLQ4Upper.move(to: CGPoint(
//            x:  bounds.width * 15/16,
//            y: -(lineLengthShift)
//        ))
//
//        tDLQ4Upper.addLine(to: CGPoint(
//            x: bounds.width + lineLengthShift,
//            y: bounds.height * 1/16
//        ))
//
//        tDLQ4Upper.stroke()
//
//
//        let tDLLQ1Lower = UIBezierPath()
//        tDLLQ1Lower.lineWidth = drawingLineWidth
//        tDLLQ1Lower.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 15/16
//        ))
//
//        tDLLQ1Lower.addLine(to: CGPoint(
//            x: bounds.width * 1/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ1Lower.stroke()
//
//
//        let tDLLQ1Mid = UIBezierPath()
//        tDLLQ1Mid.lineWidth = drawingLineWidth
//        tDLLQ1Mid.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 14/16
//        ))
//
//        tDLLQ1Mid.addLine(to: CGPoint(
//            x: bounds.width * 2/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ1Mid.stroke()
//
//
//        let tDLLQ1Upper = UIBezierPath()
//        tDLLQ1Upper.lineWidth = drawingLineWidth
//        tDLLQ1Upper.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 13/16
//        ))
//
//        tDLLQ1Upper.addLine(to: CGPoint(
//            x: bounds.width * 3/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ1Upper.stroke()
//
//
//        let tDLLQ1Line = UIBezierPath()
//        tDLLQ1Line.lineWidth = drawingLineWidth
//        tDLLQ1Line.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 12/16
//        ))
//
//        tDLLQ1Line.addLine(to: CGPoint(
//            x: bounds.width * 4/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ1Line.stroke()
//
//
//        let tDLLQ2Lower = UIBezierPath()
//        tDLLQ2Lower.lineWidth = drawingLineWidth
//        tDLLQ2Lower.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 11/16
//        ))
//
//        tDLLQ2Lower.addLine(to: CGPoint(
//            x: bounds.width * 5/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ2Lower.stroke()
//
//
//        let tDLLQ2Mid = UIBezierPath()
//        tDLLQ2Mid.lineWidth = drawingLineWidth
//        tDLLQ2Mid.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 10/16
//        ))
//
//        tDLLQ2Mid.addLine(to: CGPoint(
//            x: bounds.width * 6/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ2Mid.stroke()
//
//
//        let tDLLQ2Line = UIBezierPath()
//        tDLLQ2Line.lineWidth = drawingLineWidth
//        tDLLQ2Line.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 9/16
//        ))
//
//        tDLLQ2Line.addLine(to: CGPoint(
//            x: bounds.width * 7/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ2Line.stroke()
//
//
//        let tDLLQ3Lower = UIBezierPath()
//        tDLLQ3Lower.lineWidth = drawingLineWidth
//        tDLLQ3Lower.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 8/16
//        ))
//
//        tDLLQ3Lower.addLine(to: CGPoint(
//            x: bounds.width * 8/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ3Lower.stroke()
//
//
//        let tDLLQ3Mid = UIBezierPath()
//        tDLLQ3Mid.lineWidth = drawingLineWidth
//        tDLLQ3Mid.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 7/16
//        ))
//
//        tDLLQ3Mid.addLine(to: CGPoint(
//            x: bounds.width * 9/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ3Mid.stroke()
//
//
//        let tDLLQ3Upper = UIBezierPath()
//        tDLLQ3Upper.lineWidth = drawingLineWidth
//        tDLLQ3Upper.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 6/16
//        ))
//
//        tDLLQ3Upper.addLine(to: CGPoint(
//            x: bounds.width * 10/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ3Upper.stroke()
//
//
//        let tDLLQ3Line = UIBezierPath()
//        tDLLQ3Line.lineWidth = drawingLineWidth
//        tDLLQ3Line.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 5/16
//        ))
//
//        tDLLQ3Line.addLine(to: CGPoint(
//            x: bounds.width * 11/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ3Line.stroke()
//
//
//        let tDLLQ4Lower = UIBezierPath()
//        tDLLQ4Lower.lineWidth = drawingLineWidth
//        tDLLQ4Lower.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 4/16
//        ))
//
//        tDLLQ4Lower.addLine(to: CGPoint(
//            x: bounds.width * 12/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ4Lower.stroke()
//
//
//        let tDLLQ4Mid = UIBezierPath()
//        tDLLQ4Mid.lineWidth = drawingLineWidth
//        tDLLQ4Mid.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 3/16
//        ))
//
//        tDLLQ4Mid.addLine(to: CGPoint(
//            x: bounds.width * 13/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ4Mid.stroke()
//
//
//        let tDLLQ4Upper = UIBezierPath()
//        tDLLQ4Upper.lineWidth = drawingLineWidth
//        tDLLQ4Upper.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 2/16
//        ))
//
//        tDLLQ4Upper.addLine(to: CGPoint(
//            x: bounds.width * 14/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ4Upper.stroke()
//
//
//        let tDLLQ4Line = UIBezierPath()
//        tDLLQ4Line.lineWidth = drawingLineWidth
//        tDLLQ4Line.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 1/16
//        ))
//
//        tDLLQ4Line.addLine(to: CGPoint(
//            x: bounds.width * 15/16,
//            y: bounds.height + lineLengthShift
//        ))
//
//        tDLLQ4Line.stroke()
        
        
        
//        let rectangleOverlay = UIBezierPath(
//            rect: CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height)
//        )
//        altFillColor.setFill()
//        rectangleOverlay.fill()
//
//
//        altLineColor.setStroke()
//
//        let altDiagonalCenterLine = UIBezierPath()
//        altDiagonalCenterLine.lineWidth = drawingLineWidth
//        altDiagonalCenterLine.move(to: CGPoint(
//            x: 0,
//            y: bounds.height
//        ))
//
//        altDiagonalCenterLine.addLine(to: CGPoint(
//            x: bounds.width,
//            y: 0
//        ))
//
//        altDiagonalCenterLine.stroke()
//
//        let altDiagonalQ1Upper = UIBezierPath()
//        altDiagonalQ1Upper.lineWidth = drawingLineWidth
//        altDiagonalQ1Upper.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 1/16
//        ))
//
//        altDiagonalQ1Upper.addLine(to: CGPoint(
//            x: bounds.width * 1/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ1Upper.stroke()
//
//
//        let altDiagonalQ1Mid = UIBezierPath()
//        altDiagonalQ1Mid.lineWidth = drawingLineWidth
//        altDiagonalQ1Mid.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 2/16
//        ))
//
//        altDiagonalQ1Mid.addLine(to: CGPoint(
//            x: bounds.width * 2/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ1Mid.stroke()
//
//
//        let altDiagonalQ1Lower = UIBezierPath()
//        altDiagonalQ1Lower.lineWidth = drawingLineWidth
//        altDiagonalQ1Lower.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 3/16
//        ))
//
//        altDiagonalQ1Lower.addLine(to: CGPoint(
//            x: bounds.width * 3/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ1Lower.stroke()
//
//        let altDiagonalQ1Line = UIBezierPath()
//        altDiagonalQ1Line.lineWidth = drawingLineWidth
//        altDiagonalQ1Line.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 4/16
//        ))
//
//        altDiagonalQ1Line.addLine(to: CGPoint(
//            x: bounds.width * 4/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ1Line.stroke()
//
//
//        let altDiagonalQ2Upper = UIBezierPath()
//        altDiagonalQ2Upper.lineWidth = drawingLineWidth
//        altDiagonalQ2Upper.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 5/16
//        ))
//
//        altDiagonalQ2Upper.addLine(to: CGPoint(
//            x: bounds.width * 5/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ2Upper.stroke()
//
//
//        let altDiagonalQ2Mid = UIBezierPath()
//        altDiagonalQ2Mid.lineWidth = drawingLineWidth
//        altDiagonalQ2Mid.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 6/16
//        ))
//
//        altDiagonalQ2Mid.addLine(to: CGPoint(
//            x: bounds.width * 6/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ2Mid.stroke()
//
//
//        let altDiagonalQ2Lower = UIBezierPath()
//        altDiagonalQ2Lower.lineWidth = drawingLineWidth
//        altDiagonalQ2Lower.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 7/16
//        ))
//
//        altDiagonalQ2Lower.addLine(to: CGPoint(
//            x: bounds.width * 7/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ2Lower.stroke()
//
//
//        let altDiagonalQ2Line = UIBezierPath()
//        altDiagonalQ2Line.lineWidth = drawingLineWidth
//        altDiagonalQ2Line.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 8/16
//        ))
//
//        altDiagonalQ2Line.addLine(to: CGPoint(
//            x: bounds.width * 8/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ2Line.stroke()
//
//        let altDiagonalQ3Upper = UIBezierPath()
//        altDiagonalQ3Upper.lineWidth = drawingLineWidth
//        altDiagonalQ3Upper.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 9/16
//        ))
//
//        altDiagonalQ3Upper.addLine(to: CGPoint(
//            x: bounds.width * 9/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ3Upper.stroke()
//
//
//        let altDiagonalQ3Mid = UIBezierPath()
//        altDiagonalQ3Mid.lineWidth = drawingLineWidth
//        altDiagonalQ3Mid.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 10/16
//        ))
//
//        altDiagonalQ3Mid.addLine(to: CGPoint(
//            x: bounds.width * 10/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ3Mid.stroke()
//
//
//        let altDiagonalQ3Lower = UIBezierPath()
//        altDiagonalQ3Lower.lineWidth = drawingLineWidth
//        altDiagonalQ3Lower.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 11/16
//        ))
//
//        altDiagonalQ3Lower.addLine(to: CGPoint(
//            x: bounds.width * 11/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ3Lower.stroke()
//
//
//        let altDiagonalQ4Upper = UIBezierPath()
//        altDiagonalQ4Upper.lineWidth = drawingLineWidth
//        altDiagonalQ4Upper.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 12/16
//        ))
//
//        altDiagonalQ4Upper.addLine(to: CGPoint(
//            x: bounds.width * 12/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ4Upper.stroke()
//
//
//        let altDiagonalQ4Mid = UIBezierPath()
//        altDiagonalQ4Mid.lineWidth = drawingLineWidth
//        altDiagonalQ4Mid.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 13/16
//        ))
//
//        altDiagonalQ4Mid.addLine(to: CGPoint(
//            x: bounds.width * 13/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ4Mid.stroke()
//
//
//        let altDiagonalQ4Lower = UIBezierPath()
//        altDiagonalQ4Lower.lineWidth = drawingLineWidth
//        altDiagonalQ4Lower.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 14/16
//        ))
//
//        altDiagonalQ4Lower.addLine(to: CGPoint(
//            x: bounds.width * 14/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ4Lower.stroke()
//
//
//        let altDiagonalQ4Line = UIBezierPath()
//        altDiagonalQ4Line.lineWidth = drawingLineWidth
//        altDiagonalQ4Line.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height * 15/16
//        ))
//
//        altDiagonalQ4Line.addLine(to: CGPoint(
//            x: bounds.width * 15/16,
//            y: -(lineLengthShift)
//        ))
//
//        altDiagonalQ4Line.stroke()
//
//
//        let altDiagonalLowerQ1Upper = UIBezierPath()
//        altDiagonalLowerQ1Upper.lineWidth = drawingLineWidth
//        altDiagonalLowerQ1Upper.move(to: CGPoint(
//            x: bounds.width * 1/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ1Upper.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 1/16
//        ))
//
//        altDiagonalLowerQ1Upper.stroke()
//
//
//        let altDiagonalLowerQ1Mid = UIBezierPath()
//        altDiagonalLowerQ1Mid.lineWidth = drawingLineWidth
//        altDiagonalLowerQ1Mid.move(to: CGPoint(
//            x: bounds.width * 2/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ1Mid.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 2/16
//        ))
//
//        altDiagonalLowerQ1Mid.stroke()
//
//
//        let altDiagonalLowerQ1Lower = UIBezierPath()
//        altDiagonalLowerQ1Lower.lineWidth = drawingLineWidth
//        altDiagonalLowerQ1Lower.move(to: CGPoint(
//            x: bounds.width * 3/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ1Lower.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 3/16
//        ))
//
//        altDiagonalLowerQ1Lower.stroke()
//
//
//        let altDiagonalLowerQ1Line = UIBezierPath()
//        altDiagonalLowerQ1Line.lineWidth = drawingLineWidth
//        altDiagonalLowerQ1Line.move(to: CGPoint(
//            x: bounds.width * 4/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ1Line.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 4/16
//        ))
//
//        altDiagonalLowerQ1Line.stroke()
//
//
//        let altDiagonalLowerQ2Upper = UIBezierPath()
//        altDiagonalLowerQ2Upper.lineWidth = drawingLineWidth
//        altDiagonalLowerQ2Upper.move(to: CGPoint(
//            x: bounds.width * 5/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ2Upper.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 5/16
//        ))
//
//        altDiagonalLowerQ2Upper.stroke()
//
//
//        let altDiagonalLowerQ2Mid = UIBezierPath()
//        altDiagonalLowerQ2Mid.lineWidth = drawingLineWidth
//        altDiagonalLowerQ2Mid.move(to: CGPoint(
//            x: bounds.width * 6/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ2Mid.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 6/16
//        ))
//
//        altDiagonalLowerQ2Mid.stroke()
//
//
//        let altDiagonalLowerQ2Lower = UIBezierPath()
//        altDiagonalLowerQ2Lower.lineWidth = drawingLineWidth
//        altDiagonalLowerQ2Lower.move(to: CGPoint(
//            x: bounds.width * 7/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ2Lower.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 7/16
//        ))
//
//        altDiagonalLowerQ2Lower.stroke()
//
//
//        let altDiagonalLowerQ2Line = UIBezierPath()
//        altDiagonalLowerQ2Line.lineWidth = drawingLineWidth
//        altDiagonalLowerQ2Line.move(to: CGPoint(
//            x: bounds.width * 8/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ2Line.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 8/16
//        ))
//
//        altDiagonalLowerQ2Line.stroke()
//
//
//        let altDiagonalLowerQ3Upper = UIBezierPath()
//        altDiagonalLowerQ3Upper.lineWidth = drawingLineWidth
//        altDiagonalLowerQ3Upper.move(to: CGPoint(
//            x: bounds.width * 9/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ3Upper.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 9/16
//        ))
//
//        altDiagonalLowerQ3Upper.stroke()
//
//        let altDiagonalLowerQ3Mid = UIBezierPath()
//        altDiagonalLowerQ3Mid.lineWidth = drawingLineWidth
//        altDiagonalLowerQ3Mid.move(to: CGPoint(
//            x: bounds.width * 10/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ3Mid.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 10/16
//        ))
//
//        altDiagonalLowerQ3Mid.stroke()
//
//
//        let altDiagonalLowerQ3Lower = UIBezierPath()
//        altDiagonalLowerQ3Lower.lineWidth = drawingLineWidth
//        altDiagonalLowerQ3Lower.move(to: CGPoint(
//            x: bounds.width * 11/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ3Lower.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 11/16
//        ))
//
//        altDiagonalLowerQ3Lower.stroke()
//
//
//        let altDiagonalLowerQ3Line = UIBezierPath()
//        altDiagonalLowerQ3Line.lineWidth = drawingLineWidth
//        altDiagonalLowerQ3Line.move(to: CGPoint(
//            x: bounds.width * 12/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ3Line.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 12/16
//        ))
//
//        altDiagonalLowerQ3Line.stroke()
//
//
//        let altDiagonalLowerQ4Upper = UIBezierPath()
//        altDiagonalLowerQ4Upper.lineWidth = drawingLineWidth
//        altDiagonalLowerQ4Upper.move(to: CGPoint(
//            x: bounds.width * 13/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ4Upper.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 13/16
//        ))
//
//        altDiagonalLowerQ4Upper.stroke()
//
//
//        let altDiagonalLowerQ4Mid = UIBezierPath()
//        altDiagonalLowerQ4Mid.lineWidth = drawingLineWidth
//        altDiagonalLowerQ4Mid.move(to: CGPoint(
//            x: bounds.width * 14/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ4Mid.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 14/16
//        ))
//
//        altDiagonalLowerQ4Mid.stroke()
//
//
//        let altDiagonalLowerQ4Lower = UIBezierPath()
//        altDiagonalLowerQ4Lower.lineWidth = drawingLineWidth
//        altDiagonalLowerQ4Lower.move(to: CGPoint(
//            x: bounds.width * 15/16,
//            y: bounds.height + (lineLengthShift)
//        ))
//
//        altDiagonalLowerQ4Lower.addLine(to: CGPoint(
//            x: bounds.width + (lineLengthShift),
//            y: bounds.height * 15/16
//        ))
//
//        altDiagonalLowerQ4Lower.stroke()
        
//        let bMidDiagonalLine = UIBezierPath()
//        bMidDiagonalLine.lineWidth = drawingLineWidth
//        bMidDiagonalLine.move(to: CGPoint(
//            x: -(lineLengthShift),
//            y: bounds.height/2
//        ))
//
//        bMidDiagonalLine.addLine(to: CGPoint(
//            x: bounds.width/2,
//            y: bounds.height + lineLengthShift
//        ))
//
//        bMidDiagonalLine.stroke()
        
        
        //        var transform1 = CGAffineTransform(scaleX: 1.25, y: 1)
        //        transform1 = transform1.translatedBy(x: -30, y: -25)
        //        topArcPath.apply(transform1)
        //        lineColor.setStroke()
        //        topArcPath.stroke()
        
//        var transform1 = CGAffineTransform(translationX: bounds.width/2, y: -5)
////        transform1 = transform1.translatedBy(x: bounds.width/2, y: 1)
//        centerDiagonalLine.apply(transform1)
//        centerDiagonalLine.stroke()
        
        
        
        
        //        let mostInnerTopCenterPoint = CGPoint(x: (bounds.width / 2), y: (bounds.height / 15) * 7.8125)
        //        let mostInnerBottomCenterPoint = CGPoint(x: (bounds.width / 2), y: (bounds.height / 15) * 7.1875)
        //        // 6.25 -- 8.75
        //        // 0.3125 -- 8.125 -- 6.875
        //
        //        // Draw most inner center point to center point line
        //        let innerVertical = UIBezierPath()
        //        innerVertical.lineWidth = drawingLineWidth
        //        innerVertical.move(to: CGPoint(
        //            x: mostInnerTopCenterPoint.x,
        //            y: mostInnerTopCenterPoint.y
        //        ))
        //
        //        innerVertical.addLine(to: CGPoint(
        //            x: mostInnerBottomCenterPoint.x,
        //            y: mostInnerBottomCenterPoint.y
        //        ))
        //
        //        centerLineColor.setStroke()
        //        innerVertical.stroke()
        //        let verticalPath1 = UIBezierPath()
        //        verticalPath1.lineWidth = drawingLineWidth
        //        verticalPath1.move(to: CGPoint(
        //            x: mainBottomCenterPoint.x,
        //            y: mainBottomCenterPoint.y
        //        ))
        //
        //        verticalPath1.addLine(to: CGPoint(
        //            x: mainTopCenterPoint.x,
        //            y: mainTopCenterPoint.y
        //        ))
        //
        //        centerLineColor.setStroke()
        //        verticalPath1.stroke()
        //
        //        let centerRadius = (mostInnerTopCenterPoint.y - mostInnerBottomCenterPoint.y) / 2
        //        let centerLeftTopPointDifference = mostInnerTopCenterPoint.x - centerRadius
        //        let centerBottomPointDifference = mostInnerBottomCenterPoint.x - centerRadius
        //
        //        let centerLeftTopPoint = CGPoint(x: centerLeftTopPointDifference, y: mostInnerTopCenterPoint.y)
        //        let centerLeftBottomPoint = CGPoint(x: centerBottomPointDifference, y: mostInnerBottomCenterPoint.y)
        //
        //        let arcPath = UIBezierPath(
        //            arcCenter: mostInnerBottomCenterPoint,
        //            radius: centerRadius,
        //            startAngle: startAngle,
        //            endAngle: endAngle,
        //            clockwise: true
        //        )
        //
        //       e
        //
        //        var transform3 = CGAffineTransform(scaleX: 1.2, y: 1.15)
        //        transform3 = transform3.translatedBy(x: -25, y: -20)
        //        topArcPath.apply(transform3)
        //        topArcPath.stroke()
        
        
        
        
        
        
        
        
        
        
        
        
       let mainTopCenterPoint = CGPoint(x: (bounds.width / 2), y: (bounds.height / 15) * (6.25 - 0.625 - 0.3125))
//        let mainTopCenterPoint = CGPoint(x: (bounds.width / 2), y: (bounds.height / 2))
        let mainBottomCenterPoint = CGPoint(x: (bounds.width / 2), y: (bounds.height / 15) * (8.75 + 0.625 + 0.3125))
        //let topCenterPoint = CGPoint(x: (bounds.width / 2), y: (bounds.height / 15) * 6.25)
        //let bottomCenterPoint = CGPoint(x: (bounds.width / 2), y: (bounds.height / 15) * 8.75)
        
        // Draw the second inner top arc
        //let topCenterPoint = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        //let radius = max(bounds.width / 15, bounds.height / 15)
        
        let innerRadius = (mainBottomCenterPoint.y - mainTopCenterPoint.y)
        let leftTopPointDifference = mainTopCenterPoint.x - innerRadius
        let leftBottomPointDifference = mainBottomCenterPoint.x - innerRadius
        
        let leftTopPoint = CGPoint(x: leftTopPointDifference, y: mainTopCenterPoint.y)
        let leftBottomPoint = CGPoint(x: leftBottomPointDifference, y: mainBottomCenterPoint.y)
        
        
        let rightTopPointDifference = mainTopCenterPoint.x + innerRadius
        let rightBottomPointDifference = mainBottomCenterPoint.x + innerRadius
        
        let rightTopPoint = CGPoint(x: rightTopPointDifference, y: mainTopCenterPoint.y)
        let rightBottomPoint = CGPoint(x: rightBottomPointDifference, y: mainBottomCenterPoint.y)
        
        
        
        let rightVerticalLine = UIBezierPath()
        rightVerticalLine.lineWidth = drawingLineWidth
        rightVerticalLine.move(to: CGPoint(
            x: rightTopPoint.x,
            y: rightTopPoint.y
        ))
        
        rightVerticalLine.addLine(to: CGPoint(
            x: rightBottomPoint.x,
            y: rightBottomPoint.y
        ))
        
        lineColor.setStroke()
//        rightVerticalLine.stroke()
        
        
        let leftVerticalLine = UIBezierPath()
        leftVerticalLine.lineWidth = drawingLineWidth
        leftVerticalLine.move(to: CGPoint(
            x: leftBottomPoint.x,
            y: leftBottomPoint.y
        ))
        
        leftVerticalLine.addLine(to: CGPoint(
            x: leftTopPoint.x,
            y: leftTopPoint.y
        ))
        
        lineColor.setStroke()
//        leftVerticalLine.stroke()
        
        
        let topArcPath = UIBezierPath(
            arcCenter: mainTopCenterPoint,
            radius: innerRadius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true
        )
        
        let bottomArcPath = UIBezierPath(
            arcCenter: mainBottomCenterPoint,
            radius: innerRadius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: false
        )
        
//        topArcPath.lineWidth = drawingLineWidth
//        bottomArcPath.lineWidth = drawingLineWidth
//        lineColor.setStroke()
//        topArcPath.stroke()
//        bottomArcPath.stroke()
        
//        let innerRect = UIBezierPath(rect: CGRect(
//            x: leftTopPoint.x, y: leftTopPoint.y, width: innerRadius * 2, height: innerRadius
//        ))
        
//        let innerRect = UIBezierPath(
//            rect: CGRect(x: leftTopPoint.x, y: leftTopPoint.y, width: innerRadius*2, height: (leftBottomPoint.y - leftTopPoint.y))
//        )
        
//        guard let ovalClippingPath = innerRect.copy() as? UIBezierPath else {
//            return
//        }
        
        let ovalClippingPath = UIBezierPath()
        ovalClippingPath.lineWidth = drawingLineWidth
        ovalClippingPath.move(to: CGPoint(x: leftTopPoint.x, y: leftTopPoint.y))
        ovalClippingPath.addArc(
            withCenter: mainTopCenterPoint,
            radius: innerRadius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true
        )
        
        ovalClippingPath.addLine(to: CGPoint(x: rightTopPoint.x, y: rightTopPoint.y))
        ovalClippingPath.addLine(to: CGPoint(x: rightBottomPoint.x, y: rightBottomPoint.y))
        ovalClippingPath.addArc(
            withCenter: mainBottomCenterPoint,
            radius: innerRadius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: false
        )
        
        ovalClippingPath.addLine(to: CGPoint(x: leftBottomPoint.x, y: leftBottomPoint.y))
        ovalClippingPath.addLine(to: CGPoint(x: leftTopPoint.x, y: leftTopPoint.y))
        ovalClippingPath.close()
        
        
        
        
        
        
        
        
        
        //innerRect.addQuadCurve(to: <#T##CGPoint#>, controlPoint: <#T##CGPoint#>)
        
//        ovalClippingPath.move(to: CGPoint(
//            x: leftTopPoint.x,
//            y: leftTopPoint.y
//        ))
                
//        ovalClippingPath.move(to: CGPoint(
//            x: rightTopPoint.x,
//            y: rightTopPoint.y
//
//        ))
//
//        ovalClippingPath.addLine(to: CGPoint(
//            x: rightBottomPoint.x,
//            y: rightBottomPoint.y
//        ))
//
//        ovalClippingPath.addLine(to: CGPoint(
//            x: leftBottomPoint.x,
//            y: leftBottomPoint.y
//        ))
        
        

//        ovalClippingPath.move(to: CGPoint(
//            x: leftBottomPoint.x,
//            y: leftBottomPoint.y
//        ))
//
//        ovalClippingPath.addLine(to: CGPoint(
//            x: leftTopPoint.x,
//            y: leftTopPoint.y
//        ))
        
        
        
//        ovalClippingPath.addLine(to: CGPoint(
//            x: rightTopPoint.x,
//            y: rightTopPoint.y
//        ))
        
        
        
//        ovalClippingPath.addLine(to: CGPoint(
//            x: rightTopPoint.x,
//            y: rightTopPoint.y
//        ))
//
//        ovalClippingPath.addLine(to: CGPoint(
//            x: rightBottomPoint.x,
//            y: rightBottomPoint.y
//        ))
//
//        ovalClippingPath.addLine(to: CGPoint(
//            x: leftBottomPoint.x,
//            y: leftBottomPoint.y
//        ))
        ////////
//        ovalClippingPath.addArc(
//            withCenter: mainTopCenterPoint,
//            radius: innerRadius,
//            startAngle: startAngle,
//            endAngle: endAngle,
//            clockwise: true
//        )

//        ovalClippingPath.addArc(
//            withCenter: mainBottomCenterPoint,
//            radius: innerRadius,
//            startAngle: startAngle,
//            endAngle: endAngle,
//            clockwise: false
//        )
        ///////////
//        ovalClippingPath.move(to: CGPoint(
//            x: leftTopPoint.x,
//            y: leftTopPoint.y
//        ))
        
        
        
//        ovalClippingPath.move(to: CGPoint(
//            x: rightTopPoint.x,
//            y: rightTopPoint.y
//        ))
//
        
////        ovalClippingPath.addLine(to: CGPoint(
////            x: leftTopPoint.x,
////            y: leftTopPoint.y
////        ))
//
//        ovalClippingPath.move(to: CGPoint(
//            x: leftBottomPoint.x,
//            y: leftBottomPoint.y
//
//        ))
//
//        ovalClippingPath.addLine(to: CGPoint(
//            x: leftTopPoint.x,
//            y: leftTopPoint.y
//        ))
//
        
        
//
//        ovalClippingPath.close()
        centerLineColor.setStroke()
        ovalClippingPath.lineWidth = drawingLineWidth
        ovalClippingPath.stroke()
        context.saveGState()
        ovalClippingPath.addClip()
        
        
     
      
        
        
        
        
        
        
        
        let rectangleOverlay = UIBezierPath(
            rect: CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height)
        )
        altFillColor.setFill()
        rectangleOverlay.fill()
        
        
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
        
        
        
        // Draw the left side vertical lines
        //        let verticalPath1 = UIBezierPath()
        //        verticalPath1.lineWidth = drawingLineWidth
        //        verticalPath1.move(to: CGPoint(
        //            x: mainBottomCenterPoint.x,
        //            y: mainBottomCenterPoint.y
        //        ))
        //
        //        verticalPath1.addLine(to: CGPoint(
        //            x: mainTopCenterPoint.x,
        //            y: mainTopCenterPoint.y
        //        ))
        //
        //        centerLineColor.setStroke()
        //        verticalPath1.stroke()
        
        
        
        //        var transform1 = CGAffineTransform(scaleX: 1.25, y: 1)
        //        transform1 = transform1.translatedBy(x: -30, y: -25)
        //        topArcPath.apply(transform1)
        //        lineColor.setStroke()
        //        topArcPath.stroke()
        
        //        var transform2 = CGAffineTransform(scaleX: 1.25, y: 1.2)
        //        transform2 = transform2.translatedBy(x: -30, y: -25)
        //        topArcPath.apply(transform2)
        //        topArcPath.stroke()
        //
        //        var transform3 = CGAffineTransform(scaleX: 1.2, y: 1.15)
        //        transform3 = transform3.translatedBy(x: -25, y: -20)
        //        topArcPath.apply(transform3)
        //        topArcPath.stroke()
        
        
    }
    
}
