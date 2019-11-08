//
//  CreditCardView.swift
//  CreditCardView
//
//  Created by Jean-Marc Boullianne on 11/4/19.
//

import UIKit

public class CreditCardView: UIView {

    
    var backgroundView:CCBackgroundView
    var cardContentView:CCContentView
    
    var CONTENT_PADDING:CGFloat = 15
    
    public override init(frame: CGRect) {
        backgroundView = CCBackgroundView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        cardContentView = CCContentView(frame: CGRect(x: CONTENT_PADDING, y: CONTENT_PADDING, width: frame.width - (CONTENT_PADDING * 2), height: frame.height - (CONTENT_PADDING * 2)))
        super.init(frame: frame)
        setupViews()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        backgroundView = CCBackgroundView()
        cardContentView = CCContentView()
        super.init(coder: aDecoder)
        setupViews()
    }
    
    public init(frame: CGRect, template: CCBackgroundView.CCBackgroundTemplate) {
        backgroundView = CCBackgroundView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height), template: template)
        cardContentView = CCContentView(frame: CGRect(x: CONTENT_PADDING, y: CONTENT_PADDING, width: frame.width - (CONTENT_PADDING * 2), height: frame.height - (CONTENT_PADDING * 2)))
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews() {
        self.addSubview(backgroundView)
        backgroundView.layer.cornerRadius = 10.0
        
        self.addSubview(cardContentView)
    }
    
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */

}
