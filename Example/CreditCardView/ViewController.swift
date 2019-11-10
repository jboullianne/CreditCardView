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

    var card1:CreditCardView!
    var card2:CreditCardView!
    var card3:CreditCardView!
    var card4:CreditCardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let c1:UIColor = UIColor(rgb: 0x7CEA9C)
        let c2:UIColor = UIColor(rgb: 0x2FB799)
        let c3:UIColor = UIColor(rgb: 0x454851)
        let c4:UIColor = UIColor(rgb: 0x6F73D2)
        let c5:UIColor = UIColor(rgb: 0x98C1D9)
        
        // Examples of Different Templates
        
        
        card1 = CreditCardView(frame: CGRect(x: (self.view.frame.width - 880)/2, y: (self.view.frame.height - 530)/2, width: 390, height: 215),
                               template: .Basic(c1, c2, c3))
        
        card2 = CreditCardView(frame: CGRect(x: self.view.frame.width - ((self.view.frame.width - 880)/2) - 390, y: (self.view.frame.height - 530)/2, width: 390, height: 215),
                               template: .Curve(c1, c2, c3, c4, c5))
        
        card3 = CreditCardView(frame: CGRect(x: (self.view.frame.width - 880)/2, y: self.view.frame.height - ((self.view.frame.height - 530)/2) - 215, width: 390, height: 215),
                                        template: .Gradient(c1, c2))
        
        card4 = CreditCardView(frame: CGRect(x: self.view.frame.width - ((self.view.frame.width - 880)/2) - 390, y: self.view.frame.height - ((self.view.frame.height - 530)/2) - 215, width: 390, height: 215),
                                        template: .Flat(c3))
        
        self.view.addSubview(card1)
        self.view.addSubview(card2)
        self.view.addSubview(card3)
        self.view.addSubview(card4)
        
        // Add Shadow to Credit card
        card1.layer.applySketchShadow(color: UIColor.black, alpha: 0.5, x: 0, y: 2, blur: 60, spread: 0)
        card2.layer.applySketchShadow(color: UIColor.black, alpha: 0.5, x: 0, y: 2, blur: 60, spread: 0)
        card3.layer.applySketchShadow(color: UIColor.black, alpha: 0.5, x: 0, y: 2, blur: 60, spread: 0)
        card4.layer.applySketchShadow(color: UIColor.black, alpha: 0.5, x: 0, y: 2, blur: 60, spread: 0)
        
        // Change Card Details
        card1.nameLabel.text = "Jean-Marc Boullianne"
        card1.expLabel.text = "02/30"
        card1.numLabel.text = "1111 2222 3333 4444"
        card1.brandLabel.text = "VISA"
        card1.brandImageView.image = UIImage()
        
        card2.nameLabel.text = "Jean-Marc Boullianne"
        card2.expLabel.text = "02/30"
        card2.numLabel.text = "1111 2222 3333 4444"
        card2.brandLabel.text = "VISA"
        card2.brandImageView.image = UIImage()
        
        card3.nameLabel.text = "Jean-Marc Boullianne"
        card3.expLabel.text = "02/30"
        card3.numLabel.text = "1111 2222 3333 4444"
        card3.brandLabel.text = "VISA"
        card3.brandImageView.image = UIImage()
        
        card4.nameLabel.text = "Jean-Marc Boullianne"
        card4.expLabel.text = "02/30"
        card4.numLabel.text = "1111 2222 3333 4444"
        card4.brandLabel.text = "VISA"
        card4.brandImageView.image = UIImage()
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

