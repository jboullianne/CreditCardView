//
//  CCBackgroundView.swift
//  CreditCardView
//
//  Created by Jean-Marc Boullianne on 11/4/19.
//

import UIKit

public class CCBackgroundView: UIView {
    
    // Holds Templates For Credit Card Background
    public enum CCBackgroundTemplate {
        case Basic
        case Flat
    }
    
    // Template Used When Creating Card
    var template:CCBackgroundTemplate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    // Used to credit background from template
    init(frame:CGRect, template: CCBackgroundTemplate) {
        super.init(frame: frame)
        setupView()
        self.template = template
    }
    
    func setupView() {
        template = .Flat
        backgroundColor = UIColor(red: 72/255, green: 47/255, blue: 183/255, alpha: 1.0)
        self.layer.masksToBounds = true
    }
    
    override public func draw(_ rect: CGRect) {
        // Drawing code
        
        if let template = template {
            switch template {
                case .Basic:
                    drawBasicTemplate(rect: rect)
                    break
                default:
                    break
            }
        }
    }
    
    private func drawBasicTemplate(rect: CGRect) {
        // Credit Card Background
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = rect
        let bgStart = UIColor(red: 72/255, green: 47/255, blue: 183/255, alpha: 1.0)
        let bgEnd = UIColor(red: 198/255, green: 112/255, blue: 210/255, alpha: 1.0)
        gradientLayer.colors = [bgStart.cgColor, bgEnd.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.cornerRadius = 10.0
        self.layer.insertSublayer(gradientLayer, at: 0)
        
        
        // Pink Side Clip
        let sideClip = CAShapeLayer()
        let sideClipPath = UIBezierPath()
        sideClipPath.addArc(withCenter: CGPoint(x: 10, y: rect.height - 10), radius: 10.0, startAngle: CGFloat.pi / 2.0, endAngle: CGFloat.pi , clockwise: true)
        sideClipPath.addLine(to: CGPoint(x: 0, y: rect.height / 3.0 ))
        sideClipPath.addLine(to: CGPoint(x: rect.width/10.0 * 4.5, y: rect.height))
        sideClipPath.close()
        
        sideClip.path = sideClipPath.cgPath
        sideClip.fillColor = UIColor(red: 238/255, green: 138/255, blue: 162/255, alpha: 1.0).cgColor
        self.layer.insertSublayer(sideClip, at: 1)
        
        let column1 = CAGradientLayer()
        column1.frame = CGRect(x: 0, y: 0, width: rect.width, height: rect.height/8.0)
        column1.setAffineTransform(CGAffineTransform(rotationAngle: -1 * CGFloat.pi / 4.0).concatenating(CGAffineTransform(translationX: rect.width/8.0, y: rect.height/2.0)))
        let colStart = UIColor(red: 103/255, green: 128/255, blue: 200/255, alpha: 0.7)
        let colEnd = UIColor(red: 103/255, green: 128/255, blue: 200/255, alpha: 0)
        column1.colors = [colStart.cgColor, colEnd.cgColor]
        column1.startPoint = CGPoint(x: 0, y: 0.5)
        column1.endPoint = CGPoint(x: 1.0, y: 0.5)
        self.layer.insertSublayer(column1, at: 1)
        
        
        let column2 = CAGradientLayer()
        column2.frame = CGRect(x: 0, y: 0, width: rect.width, height: rect.height/4.0)
        column2.setAffineTransform(CGAffineTransform(rotationAngle: -1 * CGFloat.pi / 4.0))
        let colStart2 = UIColor(red: 103/255, green: 128/255, blue: 200/255, alpha: 0.7)
        let colEnd2 = UIColor(red: 157/255, green: 91/255, blue: 201/255, alpha: 0.45)
        column2.colors = [colStart2.cgColor, colEnd2.cgColor]
        column2.startPoint = CGPoint(x: 0.2, y: 0)
        column2.endPoint = CGPoint(x: 0.7, y: 1.0)
        self.layer.insertSublayer(column2, at: 1)
        
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor.clear
    }

}
