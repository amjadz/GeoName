//
//  ViewController.swift
//  GeoName
//
//  Created by Zubair Amjad on 7/19/19.
//  Copyright © 2019 Zubair Amjad. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class DisplayNameViewController: UIViewController, ChangeNameDelegte {

    var DATA_URL = "http://api.geonames.org/postalCodeSearch?postalcode=9011&username=demo"

    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getNameData(url: DATA_URL)
    }
    

    @IBAction func changeAreaCodeButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToChangePostalCodeScreen", sender: nil)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToChangePostalCodeScreen" {
            let changeNameViewController = segue.destination as! ChangeNameViewController

            changeNameViewController.delegate = self

        }

    }

    func getNameData(url: String) {
        Alamofire.request(url, method: .get).responseJSON { (response) in
            if response.result.isSuccess {

                let nameJSON = JSON(response.result.value!)

                self.parseNameData(json: nameJSON)

            } else {
                print(response.result.isFailure)
                self.nameLabel.text = "Internet is not working"
            }
        }

    }

    func parseNameData(json : JSON) {
        if let name = json["name"].string {
            nameLabel.text = name
        }
    }

    func changeName(name: String) {
        nameLabel.text = name
    }

}

