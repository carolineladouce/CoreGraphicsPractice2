//
//  ViewController.swift
//  CoreGraphicsPractice2
//
//  Created by Caroline LaDouce on 10/5/21.
//

import UIKit

class ViewController: UIViewController {

    let shape1 = Shape1()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        // Setup shape1
        view.addSubview(shape1)
        shape1.backgroundColor = UIColor.clear
        shape1.translatesAutoresizingMaskIntoConstraints = false
        
        // Constraints
        shape1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        shape1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        shape1.widthAnchor.constraint(equalToConstant: 100).isActive = true
        shape1.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.view = view
        
    
    
    
    }

    


}

