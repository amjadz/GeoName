//
//  ViewController.swift
//  GeoName
//
//  Created by Zubair Amjad on 7/19/19.
//  Copyright © 2019 Zubair Amjad. All rights reserved.
//

import UIKit

class DisplayNameViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func changeAreaCodeButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToChangePostalCodeScreen", sender: nil)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToChangePostalCodeScreen" {
            let changeNameViewController = segue.destination as! ChangeNameViewController


        }

    }

}

