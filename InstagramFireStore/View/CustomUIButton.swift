//
//  CustomUIButton.swift
//  InstagramFireStore
//
//  Created by Rafael.Ahmedov on 8/8/21.
//

import UIKit

class CustomUIButton: UIButton {
    
    init(attributedTitle1: String,attributedTitle2: String) {
        super.init(frame: .zero)
        
        let atts : [NSAttributedString.Key:Any] = [.foregroundColor: UIColor(white: 1, alpha: 0.7), .font:UIFont.systemFont(ofSize: 16)]
        let attributedTitle = NSMutableAttributedString(string: attributedTitle1,attributes: atts)
        let boldAtts : [NSAttributedString.Key:Any] = [.foregroundColor: UIColor(white: 1, alpha: 0.7), .font:UIFont.boldSystemFont(ofSize: 16)]
        attributedTitle.append(NSAttributedString(string: attributedTitle2,attributes: boldAtts))
        setAttributedTitle(attributedTitle, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
