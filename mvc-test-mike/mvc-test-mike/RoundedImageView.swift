//
//  RoundedImageView.swift
//  mvc-test-mike
//
//  Created by Michael Brewer on 3/21/17.
//  Copyright © 2017 Michael Brewer. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 15.0
        self.clipsToBounds = true
    }
}
