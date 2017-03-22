//
//  ItemCell.swift
//  DreamLister- Mike
//
//  Created by Michael Brewer on 3/22/17.
//  Copyright © 2017 Michael Brewer. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
    
    func configureCell(item: Item) {
        title.text = item.title
        price.text = "$\(item.price)"
        details.text = item.details
        
    }
}


