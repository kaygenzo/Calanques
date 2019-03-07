//
//  CalanqueCell.swift
//  Calanques
//
//  Created by Karim Yarboua on 07/03/2019.
//  Copyright © 2019 Karim Yarboua. All rights reserved.
//

import UIKit

class CalanqueCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var calanqueImage: RoundedImage!
    @IBOutlet weak var calanqueLabel: UILabel!
    
    var calanque: Calanque!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(_ calanque: Calanque) {
        self.calanque = calanque
        containerView.layer.cornerRadius = 20
        containerView.backgroundColor = UIColor.lightGray
        calanqueLabel.text = calanque.name
        calanqueImage.image = self.calanque.image
    }

}
