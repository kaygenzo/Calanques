//
//  DetailController.swift
//  Calanques
//
//  Created by Karim Yarboua on 07/03/2019.
//  Copyright © 2019 Karim Yarboua. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var calanqueImage: UIImageView!
    @IBOutlet weak var calanqueDesc: UITextView!
    
    var calanqueReceived: Calanque?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let calanque = calanqueReceived else { return }
        calanqueImage.image = calanque.image
        
        let mutable = NSMutableAttributedString(string: calanque.name, attributes: [
            .foregroundColor: UIColor.red,
            .font: UIFont.boldSystemFont(ofSize: 20)
        ])
        mutable.append(NSAttributedString(string: calanque.desc, attributes: [
            .font: UIFont.systemFont(ofSize: 17),
            .foregroundColor: UIColor.darkGray
        ]))
        calanqueDesc.attributedText = mutable
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
