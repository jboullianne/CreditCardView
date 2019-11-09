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
        let c1:UIColor = UIColor(rgb: 0xFBBC7C)
        let c2:UIColor = UIColor(rgb: 0xFA8D58)
        let c3:UIColor = UIColor(rgb: 0xFA7574)
        let c4:UIColor = UIColor(rgb: 0xFBA595)
        let c5:UIColor = UIColor(rgb: 0x7C58FB)
        
        // Examples of Different Templates
        /*
        creditCardView = CreditCardView(frame: CGRect(x: 10, y: 50, width: self.view.frame.width - 20, height: 215),
                                        template: .Gradient(c1, c2))
        
        creditCardView = CreditCardView(frame: CGRect(x: 10, y: 50, width: self.view.frame.width - 20, height: 215),
                                        template: .Basic(c1, c2, c3))
 
        creditCardView = CreditCardView(frame: CGRect(x: 10, y: 50, width: self.view.frame.width - 20, height: 215),
                                        template: .Flat(c3))
        */
        
        creditCardView = CreditCardView(frame: CGRect(x: 10, y: 50, width: self.view.frame.width - 20, height: 215),
                                        template: .Curve(c1, c2, c3, c4, c5))
        
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

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}

