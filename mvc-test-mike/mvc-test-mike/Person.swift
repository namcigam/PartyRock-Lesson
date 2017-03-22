//
//  Person.swift
//  mvc-test-mike
//
//  Created by Michael Brewer on 3/21/17.
//  Copyright © 2017 Michael Brewer. All rights reserved.
//

import Foundation

class Person {
    private var _firstName: String!
    private var _lastName: String!
    
    var firstName: String {
        get {
            return _firstName
        }
        set {
            _firstName = newValue
        }
    }

    var lastName: String {
        get {
            return _lastName
        }
        set {
            _lastName = newValue
        }
    }
    
    init(first: String, last: String) {
        self._firstName = first
        self._lastName = last
    }

    var fullName: String {
        return "\(_firstName!) \(_lastName!)"

    }
    
}
