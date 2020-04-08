//
//  TabBarController.swift
//  withoutStoryboardDemo
//
//  Created by Jim on 2020/4/7.
//  Copyright © 2020 Jim. All rights reserved.
//

import UIKit

private enum Tab {
  
  case first
  
  case second
  
  func controller() -> UIViewController {
    
    var controller: UIViewController
    
    switch self {
      
    case .first: controller = MainNavigationController()
      
    case .second: controller = SecondViewController()
      
    }
    
    controller.tabBarItem = tabBarItem()
    
    controller.tabBarItem.imageInsets = UIEdgeInsets(top: 8.0, left: 0.0, bottom: -10.0, right: 0.0)
    
    return controller
    
  }
  
  func tabBarItem() -> UITabBarItem {
    
    switch self {
      
    case .first:
      return UITabBarItem(
        title: nil,
        image: UIImage.init(named: "pin_0"),
        selectedImage: UIImage.init(named: "pin_1")
      )
      
    case .second:
      return UITabBarItem(
        title: nil,
        image: UIImage.init(named: "pin_0"),
        selectedImage: UIImage.init(named: "pin_1")
      )
    }
  }
  
}

class TabBarController: UITabBarController, UITabBarControllerDelegate {
  
  private let tabs: [Tab] = [.first, .second]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    viewControllers = tabs.map({$0.controller()})
    
    delegate = self
    
    
    // Do any additional setup after loading the view.
  }
  
  
  
}
