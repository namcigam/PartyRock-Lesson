//
//  ViewController.swift
//  mvc-test-mike
//
//  Created by Michael Brewer on 3/21/17.
//  Copyright © 2017 Michael Brewer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var renameField: UITextField!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var renameField2: UITextField!
   
    let person = Person(first: "John", last: "Hancock")
    override func viewDidLoad() {
        super.viewDidLoad()
        fullName.text = person.fullName
    }
    @IBAction func renamePressed(_ sender: Any) {
        if let txt = renameField.text {
            person.firstName = txt
            fullName.text = person.fullName
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

