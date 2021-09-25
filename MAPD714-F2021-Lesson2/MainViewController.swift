/*
 Author    : Ashkan Goharfar
 Student ID: 301206729
 Date      : Sept 24, 2021
 */

import UIKit

class MainViewController: UIViewController {

    // variable decleration for label, ! means that the variable was initialized
    @IBOutlet weak var ResultDisplayLabel: UILabel!
    
    
    
    // we use _ inside the parameter and before identifying to allow us not to include the sender parameter when we calling the function
    // The function is event handler for button one
//    @IBAction func ZeroButton_Pressed(_ sender: UIButton) {
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
//        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
//            self.ResultDisplayLabel.text = ""
//        }
        
//        self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "0"
        // write ! at the end of exrpession to force-unwrap the value
//        print(ResultDisplayLabel.text!)

//    }

    @IBAction func ZeroButton_Pressed(_ sender: UIButton) {
        // ternary operator (better format)
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = "0"
            return
        }
//        else{
        self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "0"
//        }
        print(ResultDisplayLabel.text!)

    }


    
    
    @IBAction func OneButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = "1"
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "1"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func ACButton_Pressed(_ sender: UIButton) {
        self.ResultDisplayLabel.text = ""
    }
    
    
    @IBAction func EqualButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "="
                print(ResultDisplayLabel.text!)
    }
    
    @IBAction func MinusPlusButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
                self.ResultDisplayLabel.text = "-" + ResultDisplayLabel.text!
                print(ResultDisplayLabel.text!)
    }
    
    
    
    @IBAction func RemainedButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "%"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func PlusButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "+"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func MinusButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "-"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func MultiplactionButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "X"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func DevisionButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "/"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func TwoButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = "2"
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "2"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func ThreeButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = "3"
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "3"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func FourButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = "4"
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "4"
                print(ResultDisplayLabel.text!)
    }

    
    @IBAction func FiveButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = "5"
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "5"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func SixButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = "6"
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "6"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func SevenButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = "7"
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "7"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func EightButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = "8"
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "8"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func NineButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = "9"
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "9"
                print(ResultDisplayLabel.text!)
    }
    
    
    @IBAction func FloatingPointButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "Display Result!" || self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "."
                print(ResultDisplayLabel.text!)
    }
    
    //Life cylce function
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//            ZeroButton_Pressed(<#T##sender: UIButton##UIButton#>).layer.cornerRadius = 25
    }
    
}

