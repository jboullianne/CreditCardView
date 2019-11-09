//
//  CCContentView.swift
//  CreditCardView
//
//  Created by Jean-Marc Boullianne on 11/8/19.
//

import UIKit

class CCContentView: UIView {
    
    var brandLabel:UILabel
    var numberLabel:UILabel
    var nameLabel:UILabel
    var expLabel:UILabel
    var brandImageView:UIImageView
    
    private var nameTitleLabel:UILabel
    private var expTitleLabel:UILabel
    
    private var bottomStack:UIStackView

    override init(frame: CGRect) {
        brandLabel = UILabel()
        numberLabel = UILabel()
        nameLabel = UILabel()
        expLabel = UILabel()
        brandImageView = UIImageView()
        
        nameTitleLabel = UILabel()
        expTitleLabel = UILabel()
        bottomStack = UIStackView()
        
        
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        brandLabel = UILabel()
        numberLabel = UILabel()
        nameLabel = UILabel()
        expLabel = UILabel()
        brandImageView = UIImageView()
        
        nameTitleLabel = UILabel()
        expTitleLabel = UILabel()
        bottomStack = UIStackView()
        
        super.init(coder: aDecoder)
        setupViews()
    }
    
    func setupViews() {
        
        self.addSubview(brandLabel)
        brandLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        brandLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        brandLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        brandLabel.text = "BRAND"
        brandLabel.textColor = UIColor.white
        brandLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 17)
        brandLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(numberLabel)
        numberLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        numberLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        numberLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        numberLabel.textColor = UIColor.white
        numberLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 27)
        numberLabel.addCharactersSpacing(spacing: 6, text: "**** **** **** 3017")
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(bottomStack)
        bottomStack.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        bottomStack.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        bottomStack.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        bottomStack.heightAnchor.constraint(equalToConstant: 50).isActive = true
        bottomStack.translatesAutoresizingMaskIntoConstraints = false
        bottomStack.axis = .horizontal
        bottomStack.alignment = .fill
        bottomStack.distribution = .fill
        bottomStack.spacing = 12
        
        
        nameTitleLabel.text = "Card Holder Name"
        nameTitleLabel.font = UIFont(name: "HelveticaNeue", size: 10)
        nameTitleLabel.textColor = UIColor.white
        nameTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.text = "Mister Plutarski"
        nameLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 17)
        nameLabel.textColor = UIColor.white
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let dStack:UIStackView = UIStackView(arrangedSubviews: [nameTitleLabel, nameLabel])
        dStack.axis = .vertical
        dStack.alignment = .fill
        dStack.distribution = .fillEqually
        dStack.spacing = -10
        dStack.translatesAutoresizingMaskIntoConstraints = false
        
        bottomStack.addArrangedSubview(dStack)
     
        expTitleLabel.text = "Exp Date"
        expTitleLabel.font = UIFont(name: "HelveticaNeue", size: 10)
        expTitleLabel.textColor = UIColor.white
        expTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        expLabel.text = "00/00"
        expLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 17)
        expLabel.textColor = UIColor.white
        expLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let eStack:UIStackView = UIStackView(arrangedSubviews: [expTitleLabel, expLabel])
        eStack.axis = .vertical
        eStack.alignment = .fill
        eStack.distribution = .fillEqually
        eStack.spacing = -10
        eStack.translatesAutoresizingMaskIntoConstraints = false
        
        bottomStack.addArrangedSubview(eStack)
        
        brandImageView.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        brandImageView.layer.cornerRadius = 10.0
        brandImageView.translatesAutoresizingMaskIntoConstraints = false
        brandImageView.contentMode = .scaleAspectFit
        bottomStack.addArrangedSubview(brandImageView)
        brandImageView.widthAnchor.constraint(equalTo: bottomStack.widthAnchor, multiplier: 0.25).isActive = true
        bottomStack.layoutSubviews()
    }
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}

extension UILabel {
    func addCharactersSpacing(spacing:CGFloat, text:String) {
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(NSAttributedStringKey.kern, value: spacing, range: NSMakeRange(0, text.count))
        self.attributedText = attributedString
    }
}
