//
//  ViewController.swift
//  MiriclePill
//
//  Created by Michael Brewer on 3/17/17.
//  Copyright © 2017 Michael Brewer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var sucessImage: UIImageView!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var streetField: UITextField!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var miraclePillLabel: UILabel!
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCode: UITextField!
    @IBOutlet weak var buyNowImage: UIImageView!
    
    let states = ["AK - Alaska",
                  "AL - Alabama",
                  "AR - Arkansas",
                  "AS - American Samoa",
                  "AZ - Arizona",
                  "CA - California",
                  "CO - Colorado",
                  "CT - Connecticut",
                  "DC - District of Columbia",
                  "DE - Delaware",
                  "FL - Florida",
                  "GA - Georgia",
                  "GU - Guam",
                  "HI - Hawaii",
                  "IA - Iowa",
                  "ID - Idaho",
                  "IL - Illinois",
                  "IN - Indiana",
                  "KS - Kansas",
                  "KY - Kentucky",
                  "LA - Louisiana",
                  "MA - Massachusetts",
                  "MD - Maryland",
                  "ME - Maine",
                  "MI - Michigan",
                  "MN - Minnesota",
                  "MO - Missouri",
                  "MS - Mississippi",
                  "MT - Montana",
                  "NC - North Carolina",
                  "ND - North Dakota",
                  "NE - Nebraska",
                  "NH - New Hampshire",
                  "NJ - New Jersey",
                  "NM - New Mexico",
                  "NV - Nevada",
                  "NY - New York",
                  "OH - Ohio",
                  "OK - Oklahoma",
                  "OR - Oregon",
                  "PA - Pennsylvania",
                  "PR - Puerto Rico",
                  "RI - Rhode Island",
                  "SC - South Carolina",
                  "SD - South Dakota",
                  "TN - Tennessee",
                  "TX - Texas",
                  "UT - Utah",
                  "VA - Virginia",
                  "VI - Virgin Islands",
                  "VT - Vermont",
                  "WA - Washington",
                  "WI - Wisconsin",
                  "WV - West Virginia",
                  "WY - Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//State button pressed
    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        zipCode.isHidden = true
        zipCodeLabel.isHidden = true
        
    }
//Buy Now button pressed
    @IBAction func buyNowBtn(_ sender: Any) {
        pillImage.isHidden = true
        miraclePillLabel.isHidden = true
        divider.isHidden = true
        priceLabel.isHidden = true
        nameField.isHidden = true
        nameLabel.isHidden = true
        streetField.isHidden = true
        streetLabel.isHidden = true
        cityField.isHidden = true
        cityLabel.isHidden = true
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        zipCode.isHidden = true
        zipCodeLabel.isHidden = true
        buyNowImage.isHidden = true
        buyNowBtn.isHidden = true
        sucessImage.isHidden = false
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        zipCode.isHidden = false
        zipCodeLabel.isHidden = false
        
    }

}



