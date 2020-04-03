//
//  ViewController.swift
//  TA
//
//  Created by Larry Mcdowell on 4/3/20.
//  Copyright © 2020 Larry Mcdowell. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func swiftUIAction(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: NewSwiftUIView())
    }
    
}

