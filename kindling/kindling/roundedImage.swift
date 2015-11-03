//
//  roundedImage.swift
//  kindling
//
//  Created by Cina Mehrvar on 2015-11-02.
//  Copyright © 2015 Cina Mehrvar. All rights reserved.
//

import UIKit

class roundedImage: UIImageView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = (bounds.size.width + bounds.size.height) / 4
    }


    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
