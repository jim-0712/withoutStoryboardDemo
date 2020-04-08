//
//  ViewController.swift
//  withoutStoryboardDemo
//
//  Created by Jim on 2020/4/7.
//  Copyright © 2020 Jim. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    view.backgroundColor = .green
    setUpBtn()
  }
  
  lazy var button: UIButton = {
    
    let testBtn = UIButton()
    
    testBtn.setTitle("Segue", for: .normal)
    
    testBtn.backgroundColor = UIColor.blue
    
    testBtn.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
    
    return testBtn
    
  }()
  
  func setUpBtn() {
    
    view.addSubview(button)
    button.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
  }
  
  @objc func nextPage() {
    
    let nextVC = TestFViewController()
    
//    present(nextVC, animated: true, completion: nil)
    
    self.navigationController?.pushViewController(nextVC, animated: true)
    
  }
  
}

