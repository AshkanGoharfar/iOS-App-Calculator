/*
 Author    : Ashkan Goharfar
 Student ID: 301206729
 Date      : Sept 24, 2021
 */

import UIKit

class MainViewController: UIViewController {

    // variable decleration for label, ! means that the variable was initialized
    @IBOutlet weak var ResultDisplayLabel: UILabel!
    
    //Life cylce function
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // we use _ inside the parameter and before identifying to allow us not to include the sender parameter when we calling the function
    // The function is event handler for button one
    @IBAction func ZeroButton_Pressed(_ sender: UIButton) {
//        // ternary operator (better format)
//        ResultDisplayLabel.text = (ResultDisplayLabel.text == "0") ? "1": "0"
//        // write ! at the end of exrpession to force-unwrap the value
//        print(ResultDisplayLabel.text!)
// Simple format
//        if(ResultDisplayLabel.text == "0"){
//            ResultDisplayLabel.text = "1"
//            return
//        }
//        self.ResultDisplayLabel.text = "0"
        
        // ternary operator (better format)
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
        }
        
        self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "0"
        // write ! at the end of exrpession to force-unwrap the value
//        print(ResultDisplayLabel.text!)

    }
    
}

