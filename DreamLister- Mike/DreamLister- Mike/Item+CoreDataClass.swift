//
//  Item+CoreDataClass.swift
//  DreamLister- Mike
//
//  Created by Michael Brewer on 3/22/17.
//  Copyright © 2017 Michael Brewer. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData

public class Item: NSManagedObject {
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        self.created = NSDate()
    }
}
