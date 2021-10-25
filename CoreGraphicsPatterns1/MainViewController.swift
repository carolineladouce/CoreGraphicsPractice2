//
//  ViewController.swift
//  CoreGraphicsPatterns1
//
//  Created by Caroline LaDouce on 10/22/21.
//

import UIKit

class MainViewController: UIViewController {

    let backgroundPattern1 = BackgroundPattern1()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let view = UIView()
        view.backgroundColor = .white
        
        
//        let backgroundPattern1 = BackgroundPattern1(frame: self.view.bounds)
        
        view.addSubview(backgroundPattern1)
        
//        backgroundPattern1.contentMode = UIView.ContentMode.scaleAspectFill
        
        backgroundPattern1.translatesAutoresizingMaskIntoConstraints = false
        backgroundPattern1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backgroundPattern1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        backgroundPattern1.widthAnchor.constraint(equalToConstant: 300).isActive = true
        backgroundPattern1.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
//        backgroundPattern1.translatesAutoresizingMaskIntoConstraints = false
//        backgroundPattern1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        backgroundPattern1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
//        backgroundPattern1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
//        backgroundPattern1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
//
//        backgroundPattern1.frame = self.view.safeAreaLayoutGuide.layoutFrame
    
//        backgroundPattern1.frame = view.frame
        
       
        self.view = view
    }


}

