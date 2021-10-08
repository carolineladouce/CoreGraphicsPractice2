//
//  ViewController.swift
//  CoreGraphicsPractice2
//
//  Created by Caroline LaDouce on 10/5/21.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    let shape1 = Shape1()
    let shape2 = Shape2()
    
    // CoreMotion:
    var maxXAcceleration: Double = 0.0
    var maxYAcceleration: Double = 0.0
    var maxZAcceleration: Double = 0.0
    var maxXRotation: Double = 0.0
    var maxYRotation: Double = 0.0
    var maxZRotation: Double = 0.0
    
    var xAcceleration: Double = 0.0
    var yAcceleration: Double = 0.0
    var zAcceleration: Double = 0.0
    var xRotation: Double = 0.0
    var yRotation: Double = 0.0
    var zRotation: Double = 0.0
    
    var motionManager = CMMotionManager()
    
    // Display labels:
    let maxXAccelerationLabel = UILabel()
    let maxYAccelerationLabel = UILabel()
    let maxZAccelerationLabel = UILabel()
    let maxXRotationLabel = UILabel()
    let maxYRotationLabel = UILabel()
    let maxZRotationLabel = UILabel()
    
    let xAccelerationLabel = UILabel()
    let yAccelerationLabel = UILabel()
    let zAccelerationLabel = UILabel()
    let xRotationLabel = UILabel()
    let yRotationLabel = UILabel()
    let zRotationLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        view.addSubview(maxXAccelerationLabel)
        maxXAccelerationLabel.text = "Max X Acceleration: \(maxXAcceleration)"
        maxXAccelerationLabel.translatesAutoresizingMaskIntoConstraints = false
        maxXAccelerationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        maxXAccelerationLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -300).isActive = true
        
        view.addSubview(maxYAccelerationLabel)
        maxYAccelerationLabel.text = "Max Y Acceleration: \(maxYAcceleration)"
        maxYAccelerationLabel.translatesAutoresizingMaskIntoConstraints = false
        maxYAccelerationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        maxYAccelerationLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -200).isActive = true
        
        view.addSubview(maxZAccelerationLabel)
        maxZAccelerationLabel.text = "Max Z Acceleration: \(maxZAcceleration)"
        maxZAccelerationLabel.translatesAutoresizingMaskIntoConstraints = false
        maxZAccelerationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        maxZAccelerationLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        
        view.addSubview(maxXRotationLabel)
        maxXRotationLabel.text = "Max X Rotation: \(maxXRotation)"
        maxXRotationLabel.translatesAutoresizingMaskIntoConstraints = false
        maxXRotationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        maxXRotationLabel.topAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        view.addSubview(maxYRotationLabel)
        maxYRotationLabel.text = "Max Y Rotation: \(maxYRotation)"
        maxYRotationLabel.translatesAutoresizingMaskIntoConstraints = false
        maxYRotationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        maxYRotationLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true

        view.addSubview(maxZRotationLabel)
        maxZRotationLabel.text = "Max Z Rotation: \(maxZRotation)"
        maxZRotationLabel.translatesAutoresizingMaskIntoConstraints = false
        maxZRotationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        maxZRotationLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 200).isActive = true
        
        
        
        
        
        
        
        
        
        //        // Setup shape1
        //        view.addSubview(shape1)
        //        shape1.backgroundColor = UIColor.clear
        //        shape1.translatesAutoresizingMaskIntoConstraints = false
        //
        //        // Constraints
        //        shape1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //        shape1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        //        shape1.widthAnchor.constraint(equalToConstant: 100).isActive = true
        //        shape1.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
//        // Setup shape2
//        view.addSubview(shape2)
//        shape2.showShape2(show: true)
//        //shape2.backgroundColor = UIColor.clear
//        shape2.translatesAutoresizingMaskIntoConstraints = false
//
//        // Constraints
//        shape2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        shape2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        //        shape2.bottomAnchor.constraint(equalTo: shape1.topAnchor, constant: 50).isActive = true
//        shape2.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        shape2.heightAnchor.constraint(equalToConstant: 200).isActive = true
//        shape2.contentMode = .scaleAspectFit
//
        
        self.view = view
    }
    
 
    
}

