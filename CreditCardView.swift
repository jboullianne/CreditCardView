//
//  CreditCardView.swift
//  CreditCardView
//
//  Created by Jean-Marc Boullianne on 11/4/19.
//

import UIKit

class CreditCardView: UIView {

    
    var backgroundView:CCBackgroundView
    
    
    override init(frame: CGRect) {
        backgroundView = CCBackgroundView(frame: frame)
        
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        backgroundView = CCBackgroundView()
        
        super.init(coder: aDecoder)
        
        setupViews()
    }
    
    init(frame: CGRect, template: CCBackgroundView.CCBackgroundTemplate) {
        backgroundView = CCBackgroundView(frame: frame, template: template)
        super.init(frame: frame)
        
        setupViews()
    }
    
    func setupViews() {
        self.addSubview(backgroundView)
    }
    
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */

}
