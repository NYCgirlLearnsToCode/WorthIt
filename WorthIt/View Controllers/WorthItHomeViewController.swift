//
//  ViewController.swift
//  WorthIt
//
//  Created by Lisa J on 1/27/18.
//  Copyright © 2018 Lisa J. All rights reserved.
//

import UIKit

class WorthItHomeViewController: UIViewController {

    let worthItHomeView = WorthItHomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(worthItHomeView)
    }


}

