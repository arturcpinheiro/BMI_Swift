//
//  ViewController.swift
//  BMI
//
//  Created by Artur on 13/02/21.
//  Copyright © 2021 Artur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var resLabel: UILabel!
    @IBOutlet weak var resImage: UIImageView!
    
    @IBOutlet weak var resView: UIView!
    
    
    
    var BMI: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func calculate(_ sender: Any) {
        if let weight = Double(weight.text!), let height = Double(height.text!){
            BMI = weight / (height * height)
            showResult()
        }
    }
    func showResult(){
        var result: String = ""
        var image: String = ""
        switch BMI{
        case 0..<16:
            result = "Thin"
            image = "magreza"
        case 16.1..<18.5:
            result = "Under ideal weight"
            image = "abaixo"
        case 18.5..<25:
            result = "Ideal Weight"
            image = "ideal"
        case 25..<30:
            result = "Overweight"
            image = "sobre"
        default:
            result = "Thin"
            image = "obesidade"
        }
        resLabel.text = result
        resImage.image = UIImage(named: image)
        resView.isHidden = false
    }
}

