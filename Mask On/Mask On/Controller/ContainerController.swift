//
//  ContainerController.swift
//  Mask On
//
//  Created by Jackson Karshen on 10/17/20.
//


import UIKit

class ContainterController: UIViewController {
    // MARK: Properties
    
    // MARK: -Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeController()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    // MARK: - Handlers
    
    func configureHomeController() {
        let homeController = HomeController()
        let controller = UINavigationController(rootViewController: homeController)
        
        view.addSubview(controller.view)
        addChild(controller)
        controller.didMove(toParent: self)
    }
    
    func configureMenuController() {
        
    }
}
