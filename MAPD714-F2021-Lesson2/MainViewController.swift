/*
 Author    : Ashkan Goharfar
 Student ID: 301206729
 Date      : Sept 24, 2021
 */

import UIKit
import Foundation

class MainViewController: UIViewController {

    var displayNumber :Double = 0
    var previousDisplayNumber :Double = 0
    var afterEquation = "0"
    var flagOperator = "0"
    var flagPercentOperaot = "0"
    // variable decleration for label, ! means that the variable was initialized
    @IBOutlet weak var ResultDisplayLabel: UILabel!
    

    @IBAction func ZeroButton_Pressed(_ sender: UIButton) {
        flagPercentOperaot = "0"
        flagOperator = "0"

        // ternary operator (better format)
        if (self.ResultDisplayLabel.text == "0" || self.ResultDisplayLabel.text == "" || afterEquation == "1"){
            displayNumber = 0
            self.ResultDisplayLabel.text = "0"
            afterEquation = "0"
            return
        }

        else{
            self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "0"
        }
    }

    
    @IBAction func OneButton_Pressed(_ sender: UIButton) {
        flagPercentOperaot = "0"
        flagOperator = "0"

        if (self.ResultDisplayLabel.text == "0" || self.ResultDisplayLabel.text == "" || afterEquation == "1"){
            displayNumber = 1
            self.ResultDisplayLabel.text = "1"
            afterEquation = "0"
            return
        }
        else{
            self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "1"
        }
    }
    
    
    @IBAction func TwoButton_Pressed(_ sender: UIButton) {
        flagPercentOperaot = "0"
        flagOperator = "0"

        if (self.ResultDisplayLabel.text == "0" || self.ResultDisplayLabel.text == "" || afterEquation == "1"){
            displayNumber = 2
            self.ResultDisplayLabel.text = "2"
            afterEquation = "0"
            return
        }
        else{
            self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "2"
        }
    }
    
    
    @IBAction func ThreeButton_Pressed(_ sender: UIButton){
        flagPercentOperaot = "0"
        flagOperator = "0"

        if (self.ResultDisplayLabel.text == "0" || self.ResultDisplayLabel.text == "" || afterEquation == "1"){
            displayNumber = 3
            self.ResultDisplayLabel.text = "3"
            afterEquation = "0"
            return
        }
        else{
            self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "3"
        }
    }
    
    
    @IBAction func FourButton_Pressed(_ sender: UIButton) {
        flagPercentOperaot = "0"
        flagOperator = "0"

        if (self.ResultDisplayLabel.text == "0" || self.ResultDisplayLabel.text == "" || afterEquation == "1"){
            displayNumber = 4
            self.ResultDisplayLabel.text = "4"
            afterEquation = "0"
            return
        }
        else{
            self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "4"
        }
    }

    
    @IBAction func FiveButton_Pressed(_ sender: UIButton) {
        flagPercentOperaot = "0"
        flagOperator = "0"

        if (self.ResultDisplayLabel.text == "0" || self.ResultDisplayLabel.text == "" || afterEquation == "1"){
            displayNumber = 5
            self.ResultDisplayLabel.text = "5"
            afterEquation = "0"
            return
        }
        else{
            self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "5"
        }
    }
    
    
    @IBAction func SixButton_Pressed(_ sender: UIButton) {
        flagPercentOperaot = "0"
        flagOperator = "0"

        if (self.ResultDisplayLabel.text == "0" || self.ResultDisplayLabel.text == "" || afterEquation == "1"){
            displayNumber = 6
            self.ResultDisplayLabel.text = "6"
            afterEquation = "0"
            return
        }
        else{
            self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "6"
        }
    }
    
    
    @IBAction func SevenButton_Pressed(_ sender: UIButton) {
        flagPercentOperaot = "0"
        flagOperator = "0"
        if (self.ResultDisplayLabel.text == "0" || self.ResultDisplayLabel.text == "" || afterEquation == "1"){
            displayNumber = 7
            self.ResultDisplayLabel.text = "7"
            afterEquation = "0"
            return
        }
        else{
            self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "7"
        }
    }
    
    
    @IBAction func EightButton_Pressed(_ sender: UIButton) {
        flagPercentOperaot = "0"
        flagOperator = "0"
        if (self.ResultDisplayLabel.text == "0" || self.ResultDisplayLabel.text == "" || afterEquation == "1"){
            displayNumber = 8
            self.ResultDisplayLabel.text = "8"
            afterEquation = "0"
            return
        }
        else{
            self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "8"
        }
    }
    
    
    @IBAction func NineButton_Pressed(_ sender: UIButton) {
        flagPercentOperaot = "0"
        flagOperator = "0"
        if (self.ResultDisplayLabel.text == "0" || self.ResultDisplayLabel.text == "" || afterEquation == "1"){
            displayNumber = 9
            self.ResultDisplayLabel.text = "9"
            afterEquation = "0"
            return
        }
        else{
            self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "9"
        }
    }

    
    
    @IBAction func ACButton_Pressed(_ sender: UIButton) {
        flagOperator = "0"
        self.ResultDisplayLabel.text = ""
    }
    
    
    @IBAction func EqualButton_Pressed(_ sender: UIButton) {
        flagOperator = "0"
        if (afterEquation == "1") {
            return
        }
        if (self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }

        var fullequ = self.ResultDisplayLabel.text!
//        let fullequ1 = fullequ.replacingOccurrences(of: "%", with: "-1X", options: .literal, range: nil)
//        fullequ = fullequ1

        if (String(fullequ.prefix(Int("1")!)) == "-"){
            let s2 = fullequ.replacingCharacters(in: ...fullequ.startIndex, with: "_1X")
            fullequ = String(s2)
        }

        if (String(fullequ.suffix(Int("1")!)) == "%"){
            print("Suffixx: :: ")
//            let e4 = fullequ.remove(at: myString.endIndex)
            let s3 = fullequ.replacingCharacters(in: fullequ.endIndex..., with: "X1")
            fullequ = String(s3)
            print("Suffixx: :: ")
        }
//        print("full equation: " + fullequ)
        print("Full euq before: ", fullequ)
        let element10 = fullequ.replacingOccurrences(of: "%+", with: "X1/100+", options: .literal, range: nil)
        let element11 = element10.replacingOccurrences(of: "%-", with: "X1/100-", options: .literal, range: nil)
                let element12 = element11.replacingOccurrences(of: "/_", with: "X_1/", options: .literal, range: nil)
//        let element13 = element12.replacingOccurrences(of: "_", with: "-", options: .literal, range: nil)
        fullequ = element12
//        print("element after : ", element11)
        let fullequList = fullequ.components(separatedBy: ["+", "-"])
        var result :String = "0"
        var numOfPlus = 0
        var numOfMinus = 0
        var flagMinus = "0"
        var operatorFirstOrder = [String]()
        var counter_5 = 0
        for char in fullequ{
            if (char == "+"){
                numOfPlus += 1
                operatorFirstOrder.append(String(char))
            }
            else if (char == "-" && counter_5 != 0){
                numOfMinus += 1
                operatorFirstOrder.append(String(char))
            }
            else if (char == "-" && counter_5 == 0){
                flagMinus = "1"
            }
            counter_5 += 1
        }

        var finalres = ""
        var counter2 = 0

        for element in fullequList{
            print("elem: " + element)
            print("element before : ", element)
            let element0 = element.replacingOccurrences(of: "%+", with: "X1/100+", options: .literal, range: nil)
//            print("element before : ", element0)
            let element1 = element0.replacingOccurrences(of: "%-", with: "X1/100-", options: .literal, range: nil)
//            print("element after : ", element1)
            let element2 = element1.replacingOccurrences(of: "%", with: "X1/100X", options: .literal, range: nil)
            let element3 = element2.replacingOccurrences(of: "XX", with: "X", options: .literal, range: nil)
            let element4 = element3.replacingOccurrences(of: "X/", with: "/", options: .literal, range: nil)
            let element = element4.replacingOccurrences(of: "_", with: "-1X", options: .literal, range: nil)
            print("element after : ", element)
            var numOfMul = 0
            var numOfDev = 0
            var operatorSecondOrder = [String]()
            for char in element{
                if (char == "X"){
                    numOfMul += 1
                    operatorSecondOrder.append(String(char))
                }
                else if (char == "/"){
                    numOfDev += 1
                    operatorSecondOrder.append(String(char))
                }
            }
            if (numOfMul > 0 || numOfDev > 0){
            let numbs = element.components(separatedBy: ["X", "/"])
            var counter = 0
            var subEquationResult = "0"
            for num in numbs{
                if (counter == 0){
                    subEquationResult = num
                }
                else{
                    var counter_3 = 0
                    
                    for oper in operatorSecondOrder{
                        if (counter_3 == (counter - 1)){
                            if (oper == "X"){
                                subEquationResult = String(Double(subEquationResult)! * Double(num)!)
                            }
                            else if (oper == "/"){
                                subEquationResult = String(Double(subEquationResult)! / Double(num)!)
                            }
                        }
                        counter_3 += 1
                    }
                }
                counter += 1
            }
            finalres = subEquationResult
            }
            
            else{
                finalres = element
            }
            print("Final Res: ", finalres)
            print("puls num :", numOfPlus)
                        
//            if (counter2 < numOfPlus + 1){
////            print(components)
//            result = String(Double(result)! + Double(finalres)!)
//            }
//            else if (counter2 < numOfMinus + numOfPlus){
//                result = String(Double(result)! - Double(finalres)!)
//            }
            
            if (counter2 == 0){
                result = finalres
            }
            else{
                var operator_3 = ""
                var counter4 = 0
                for oper_1 in operatorFirstOrder{
                    if (counter4 == (counter2 - 1)){
                        if (oper_1 == "+"){
                            print("+ operator :", counter4, (counter2 - 1))
                            result = String(Double(result)! + Double(finalres)!)
                        }
                        else if (oper_1 == "-" && counter2 != 0){
                            result = String(Double(result)! - Double(finalres)!)
                        }
                    }
                    counter4 += 1
                }
            }

            counter2 += 1
        }
        result = String(Double(round(10000000000*Double(result)!)/10000000000))
        self.ResultDisplayLabel.text = result
        afterEquation = "1"
        print("eqaul res: ", ResultDisplayLabel.text!)
    }
    
    @IBAction func MinusPlusButton_Pressed(_ sender: UIButton) {
//        afterEquation = "0"
        if (self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = "_"
//            afterEquation = "0"
            return
        }
        if (afterEquation == "1"){
            afterEquation = "0"
        }
        if (self.ResultDisplayLabel.text == "_"){
            return
        }
            self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "_"
//            print("minus plus: ", ResultDisplayLabel.text!)
        flagOperator = "1"
    }
    
    
    
    @IBAction func RemainedButton_Pressed(_ sender: UIButton) {
        if (self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
        if (afterEquation == "1"){
            afterEquation = "0"
        }
        if (flagPercentOperaot == "1"){
            return
        }
        self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "%"
//        print("Remained button: ", ResultDisplayLabel.text!)
        flagPercentOperaot = "1"
    }
    
    
    @IBAction func PlusButton_Pressed(_ sender: UIButton) {
        flagPercentOperaot = "0"
        if (self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
        if (afterEquation == "1"){
            afterEquation = "0"
        }
        if (flagOperator == "1"){
            return
        }
                self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "+"
//                print("Plus button: ", ResultDisplayLabel.text!)
        flagOperator = "1"
    }
    
    
    @IBAction func MinusButton_Pressed(_ sender: UIButton) {
         flagPercentOperaot = "0"
        if (self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
        if (afterEquation == "1"){
            afterEquation = "0"
        }
        if (flagOperator == "1"){
            return
        }
        self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "-"
//        print("minus button: ", ResultDisplayLabel.text!)
        flagOperator = "1"
    }
    
    
    @IBAction func MultiplactionButton_Pressed(_ sender: UIButton) {
        flagPercentOperaot = "0"
        if (self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
        if (afterEquation == "1"){
            afterEquation = "0"
        }
        if (flagOperator == "1"){
            return
        }
        self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "X"
//        print("Multiple button: ", ResultDisplayLabel.text!)
        flagOperator = "1"
    }
    
    
    @IBAction func DevisionButton_Pressed(_ sender: UIButton) {
        flagPercentOperaot = "0"
        if (self.ResultDisplayLabel.text == "0"){
            self.ResultDisplayLabel.text = ""
            return
        }
        if (afterEquation == "1"){
            afterEquation = "0"
        }
        if (flagOperator == "1"){
            return
        }
        self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "/"
//        print("Devision button: ", ResultDisplayLabel.text!)
        flagOperator = "1"
    }
    
    
    @IBAction func FloatingPointButton_Pressed(_ sender: UIButton) {
//        if (self.ResultDisplayLabel.text == "0"){
//            self.ResultDisplayLabel.text = ""
//            return
//        }
        if (flagPercentOperaot == "1"){
            return
        }
        if (self.ResultDisplayLabel.text!.range(of: ".*[.].*", options: .regularExpression) != nil) {
            return
        }
        self.ResultDisplayLabel.text = ResultDisplayLabel.text! + "."
//        print("Floating point button: ", ResultDisplayLabel.text!)
    }
    
    //Life cylce function
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//            ZeroButton_Pressed(<#T##sender: UIButton##UIButton#>).layer.cornerRadius = 25
    }
    
}

