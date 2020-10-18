//
//  ContainerController.swift
//  Mask On
//
//  Created by Jackson Karshen on 10/17/20.
//


import UIKit

class ContainerController: UIViewController{
    // MARK: Properties
    
    var menuController: UIViewController!
    var isExpanded = false
    
    // MARK: -Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        configureMenuController()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: - Handlers
        
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "bars").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
    
    func configureMenuController() {
        menuController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MenuController") as! MenuController
        menuController.view.frame.origin.x = -menuController.view.frame.width
        view.insertSubview(menuController.view, aboveSubview: self.view)
        addChild(menuController)
    }
    
    func showMenuController(shouldExpand: Bool) {
        if shouldExpand {
            //show menu
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.menuController.view.frame.origin.x = -80
            }, completion: nil)
            
        } else {
            //hide menu
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.menuController.view.frame.origin.x = -self.menuController.view.frame.width
            }, completion: nil)
            
        }
    }
    
    @objc func handleMenuToggle() {
        isExpanded = !isExpanded
        showMenuController(shouldExpand: isExpanded)
    }
}
