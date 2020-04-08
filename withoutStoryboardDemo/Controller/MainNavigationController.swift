//
//  MainNavigationController.swift
//  withoutStoryboardDemo
//
//  Created by Jim on 2020/4/8.
//  Copyright © 2020 Jim. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

      view.backgroundColor = .purple
      setUpViewController()
    }
  
  func setUpViewController() {
    
    let firstVC = FirstViewController()
    
    firstVC.title = "First"
    
    self.viewControllers = [firstVC]
  }
}
