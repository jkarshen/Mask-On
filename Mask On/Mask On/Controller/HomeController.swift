//
//  HomeController.swift
//  Mask On
//
//  Created by Jackson Karshen on 10/17/20.
//


import UIKit

class HomeController: UIViewController {
    // MARK: Properties
    
    var delegate: HomeControllerDelegate?
    
    // MARK: -Init
    
    override func viewDidLoad() {
        print("loaded")
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
    
    // MARK: - Handlers
    
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle()
    }
    
}
