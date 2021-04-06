//
//  FloatingActionButton.swift
//  communication FlashCards for German
//
//  Created by Media Davarkhah on 10/13/1399 AP.
//

import UIKit

class FloatingActionButton: UIButton {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        layer.borderColor = Color.button?.cgColor
        layer.borderWidth = 2
        layer.cornerRadius = 30
    
        layer.backgroundColor = Color.button?.cgColor
        setTitleColor(Color.background, for: .normal)
        layer.shadowOffset = CGSize(width: 0, height: 10)
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.25
        
        
    }
    

}
