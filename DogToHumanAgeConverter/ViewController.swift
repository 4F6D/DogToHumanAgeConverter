//
//  ViewController.swift
//  DogToHumanAgeConverter
//
//  Created by Rene on 27.04.23.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var DogAgeTextfield: UITextField!
    
    @IBOutlet weak var humanAgeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // Button functionality to convert from dog to human years
    @IBAction func convertButtonDidTap(_ sender: UIButton) {
        let dogAge = Int(DogAgeTextfield.text!) ?? 0
        
        if dogAge < 20 && dogAge > 0 {
            humanAgeLabel.text = "Ihr Hund ist \(dogAge * 7) Menschenjahre alt"
            
        } else {
            humanAgeLabel.text = "Bitte gib ein realistische Hundealter an!"
        }
        
    }
    

}

