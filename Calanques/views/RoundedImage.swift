//
//  RoundedImage.swift
//  Calanques
//
//  Created by Karim Yarboua on 07/03/2019.
//  Copyright © 2019 Karim Yarboua. All rights reserved.
//

import UIKit

class RoundedImage: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        layer.cornerRadius = frame.height / 2
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2
        contentMode = .scaleAspectFill
        clipsToBounds = true
    }

}
