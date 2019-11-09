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
        
        // Add Shadow to Credit card
        creditCardView.layer.applySketchShadow(color: UIColor.black, alpha: 0.5, x: 0, y: 2, blur: 60, spread: 0)
        
        // Changeg Card Details
        creditCardView.nameLabel.text = "Jean-Marc Boullianne"
        creditCardView.expLabel.text = "02/30"
        creditCardView.numLabel.text = "1111 2222 3333 4444"
        creditCardView.brandLabel.text = "VISA"
        creditCardView.brandImageView.image = UIImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension CALayer {
    func applySketchShadow(
        color: UIColor = .black,
        alpha: Float = 0.5,
        x: CGFloat = 0,
        y: CGFloat = 2,
        blur: CGFloat = 4,
        spread: CGFloat = 0)
    {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}

