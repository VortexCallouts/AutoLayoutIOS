//
//  ViewController.swift
//  AutoLayoutConst
//
//  Created by Davin Heilich on 9/12/19.
//  Copyright © 2019 Davin Heilich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let colorView = UIView()
    var initalConst = [NSLayoutConstraint]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.translatesAutoresizingMaskIntoConstraints = false
        colorView.backgroundColor = UIColor.red
        
        self.view.addSubview(colorView)
        
        let leadingConst = colorView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        let trailingConst = colorView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        let topConst = colorView.topAnchor.constraint(equalTo: self.view.topAnchor,constant: 100)
        let bottomConst = colorView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100)
        
        initalConst.append(contentsOf:[leadingConst,trailingConst,topConst, bottomConst])
        NSLayoutConstraint.activate(initalConst)
        // Do any additional setup after loading the view.
    }

}

