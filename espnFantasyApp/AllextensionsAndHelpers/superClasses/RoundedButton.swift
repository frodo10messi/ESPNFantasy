//
//  RoundedButton.swift
//  espnFantasyApp
//
//  Created by engitech on 27/12/2019.
//  Copyright © 2019 prog. All rights reserved.
//

import Foundation
import UIKit
class RoundedShadowButton: UIButton {
    
    var originalSize: CGRect?

    func setupView() {
        originalSize = self.frame
        self.layer.cornerRadius = self.frame.width/2
        setTitleColor(.white, for: .normal)
        backgroundColor = UIColor(red: 0.906, green: 0.208, blue: 0.192, alpha: 1)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var isChecked:Bool = false{
           didSet{
               if isChecked{
                  backgroundColor = UIColor(red: 0.906, green: 0.208, blue: 0.192, alpha: 1)
                setTitleColor(.white, for: .normal)
                

               }else{
                backgroundColor = .white
                setTitleColor(UIColor(red: 0.906, green: 0.208, blue: 0.192, alpha: 1), for: .normal)

               }
           }
       }
    
    
}
