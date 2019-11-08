//
//  ViewController.swift
//  CreditCardView
//
//  Created by jboullianne on 11/04/2019.
//  Copyright (c) 2019 jboullianne. All rights reserved.
//

import UIKit
import CreditCardView

class ViewController: UIViewController {

    var creditCardView:CreditCardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        creditCardView = CreditCardView(frame: CGRect(x: 10, y: 70, width: self.view.frame.width - 20, height: 200), template: .Basic)
        self.view.addSubview(creditCardView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

