//
//  ViewController.swift
//  Order Now
//
//  Created by Akshay Yendhe on 21/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    let foodItemOrderNumber = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let foodItemList = ["Pani Puri","Aloo Tikki", "Kathi Roll", "Pav Bhaji", "Vada Pav", "Chole Bhature", "Biryani", "Paratha","Palak Paneer", "Gulab Jamun"]
    let priceList = [20, 30, 40, 60, 20, 100, 150, 65, 190, 40]
    let foodItemImageList = ["panipuri","tikki", "roll", "pavbhaji", "vadapav", "bhature", "biryani", "paratha","palakpaneer", "gulabjamun"]

    @IBOutlet weak var foodnameLabel: UILabel!
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var inputIdTextField: UITextField!
    @IBOutlet weak var inputIdTextField2: UITextField!
    @IBOutlet weak var foodPriceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonClicked(_ sender: Any) {
        
        let inputString = inputIdTextField.text ?? ""
        let inputInt = Int(inputString) ?? 1
        
        if inputInt < 1 || inputInt > 10 {
            foodImageView.image = UIImage(named: "not-available")
            foodnameLabel.text = "not available"
            foodPriceLabel.text = "NA"
            
            let mainStoryboard = UIStoryboard(name: "Main", bundle: .none)
            let secondVC = mainStoryboard.instantiateViewController(withIdentifier: "SecondViewController")
            self.present(secondVC, animated: true)
            return
        }
        let index = inputInt - 1
        
        let inputString2 = inputIdTextField2.text ?? ""
        let inputInt2 = Int(inputString2) ?? 1
        if inputInt2 < 1 || inputInt2 > 10 {
            foodImageView.image = UIImage(named: "not-available")
            foodnameLabel.text = "not available"
            foodPriceLabel.text = "NA"
            return
        }
        let index2 = inputInt2 - 1
        
        foodnameLabel.text = "\(foodItemList[index]),\(foodItemList[index2])"
        foodImageView.image = UIImage(named: foodItemImageList[index])
        foodPriceLabel.text = "\(String(priceList[index])) + \(String(priceList[index2])) = \(String(priceList[index] + priceList[index2]))"
        
    }
}

