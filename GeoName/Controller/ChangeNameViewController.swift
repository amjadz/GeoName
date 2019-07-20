//
//  ChangeNameViewController.swift
//  GeoName
//
//  Created by Zubair Amjad on 7/20/19.
//  Copyright © 2019 Zubair Amjad. All rights reserved.
//

import UIKit

protocol ChangeNameDelegte {

    func changeName(name : String)
}

class ChangeNameViewController: UIViewController {

    var delegate : ChangeNameDelegte?
    
    @IBOutlet weak var postalCodeTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func enterChangedPostalCodePressed(_ sender: Any) {

        delegate?.changeName(name: postalCodeTextField.text!)
        
        dismiss(animated: true, completion: nil)
    }

}
