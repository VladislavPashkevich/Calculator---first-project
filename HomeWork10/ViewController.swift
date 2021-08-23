//
//  ViewController.swift
//  HomeWork10
//
//  Created by Vladislav Pashkevich on 19.08.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelTextPress: UILabel!
    @IBOutlet weak var labelTextHidden: UILabel!
    @IBOutlet weak var buttonAc: UIButton!
    
    var valueBool = false
    
    var numberOne = Double()
    var numberTwo = Double()
    var operation = String()
    var rezult: Double = 0
    var rezultInt = Int()
    var numberOneInt = Int()
    var numberTwoInt = Int()
    
    @IBAction func pressZero() {
        if labelTextPress.text == "0" && labelTextPress.text!.count == 1 || rezult == 0 {
            labelTextPress.text! = "0"
            rezult = 1
        } else if labelTextPress.text!.count >= 1 {
            labelTextPress.text! += "0"
            
        }
    }
    
    @IBAction func pressOne() {
        if labelTextPress.text == "0" || rezult == 0 {
            labelTextPress.text! = "1"
            rezult = 1
        } else {
            labelTextPress.text! += "1"
        }
        buttonAc.setTitle("C", for: .normal)
        
    }
    
    @IBAction func pressTwo() {
        if labelTextPress.text == "0" || rezult == 0 {
            labelTextPress.text! = "2"
            rezult = 1
        } else {
            labelTextPress.text! += "2"
        }
        buttonAc.setTitle("C", for: .normal)
    }
    
    @IBAction func pressThree() {
        if labelTextPress.text == "0" || rezult == 0{
            labelTextPress.text! = "3"
            rezult = 1
        } else {
            labelTextPress.text! += "3"
        }
        buttonAc.setTitle("C", for: .normal)
    }
    
    @IBAction func pressFour() {
        if labelTextPress.text == "0" || rezult == 0 {
            rezult = 1
            labelTextPress.text! = "4"
        } else {
            labelTextPress.text! += "4"
        }
        buttonAc.setTitle("C", for: .normal)
    }
    
    @IBAction func pressFive() {
        if labelTextPress.text == "0"  || rezult == 0 {
            rezult = 1
            labelTextPress.text! = "5"
        } else {
            labelTextPress.text! += "5"
        }
        buttonAc.setTitle("C", for: .normal)
    }
    
    @IBAction func pressSix() {
        if labelTextPress.text == "0" || rezult == 0 {
            rezult = 1
            labelTextPress.text! = "6"
        } else {
            labelTextPress.text! += "6"
        }
        buttonAc.setTitle("C", for: .normal)
    }
    
    @IBAction func pressSeven() {
        if labelTextPress.text == "0" || rezult == 0 {
            rezult = 1
            labelTextPress.text! = "7"
        } else {
            labelTextPress.text! += "7"
        }
        buttonAc.setTitle("C", for: .normal)
    }
    
    @IBAction func pressEight() {
        if labelTextPress.text == "0" || rezult == 0 {
            rezult = 1
            labelTextPress.text! = "8"
        } else {
            labelTextPress.text! += "8"
        }
        buttonAc.setTitle("C", for: .normal)
    }
    
    @IBAction func pressNine() {
        if labelTextPress.text == "0" || rezult == 0 {
            rezult = 1
            labelTextPress.text! = "9"
        } else {
            labelTextPress.text! += "9"
        }
        buttonAc.setTitle("C", for: .normal)
    }
    
    @IBAction func pressPoint() {
        var n: Character = "0"
        for value in labelTextPress.text! {
            if value == "." {
                n = "1"
            }
        }
        if n != "1" || labelTextPress.text! == "0" {
            labelTextPress.text! += "."
            buttonAc.setTitle("C", for: .normal)
        }
    }
    
    @IBAction func pressAc() {
        labelTextPress.text = "0"
        labelTextHidden.text = ""
        numberOne = 0
        numberTwo = 0
        rezult = 0
        buttonAc.setTitle("AC", for: .normal)
        
    }
    
    @IBAction func pressPlus() {
        numberOne = Double(labelTextPress.text!)!
        operation = "+"
        labelTextPress.text = "0"
    }
    
    @IBAction func pressMinus() {
        if labelTextPress.text! != "0"{
            numberOne = Double(labelTextPress.text!)!
            operation = "-"
            labelTextPress.text = "0"
        } else {
            labelTextPress.text = "-"
        }
    }
    
    @IBAction func pressDivision() {
        numberOne = Double(labelTextPress.text!)!
        operation = "/"
        labelTextPress.text = "0"
    }
    
    @IBAction func pressМultiplication() {
        numberOne = Double(labelTextPress.text!)!
        operation = "*"
        labelTextPress.text = "0"
    }
    
    @IBAction func pressResult() {
        numberTwo = Double(labelTextPress.text!)!
        switch operation {
        case "+":
            rezult = numberOne + numberTwo
        case "-":
            rezult = numberOne - numberTwo
        case "/":
            rezult = numberOne / numberTwo
        case "*":
            rezult = numberOne * numberTwo
        default:
            break
        }
        var oneNumberString = String()
        var twoNumberString = String()
        
        let one = Decimal(numberOne)
        if one.significantFractionalDecimalDigits == 0 {
            numberOneInt = Int(numberOne)
            oneNumberString = String(numberOneInt)
        } else {
            oneNumberString = String(numberOne)
        }
        
        let two = Decimal(numberTwo)
        if two.significantFractionalDecimalDigits == 0 {
            numberTwoInt = Int(numberTwo)
            twoNumberString = String(numberTwoInt)
        } else {
            twoNumberString = String(numberTwo)
        }
        
        let n = Decimal(rezult)
        if n.significantFractionalDecimalDigits == 0 {
            rezultInt = Int(rezult)
            labelTextPress.text = String(rezultInt)
            labelTextHidden.text = String("\(oneNumberString) \(operation) \(twoNumberString)")
            
        } else {
            labelTextPress.text = String(rezult)
            labelTextHidden.text = String("\(oneNumberString) \(operation) \(twoNumberString)")
        }
        numberOne = 0
        numberTwo = 0
        rezult = 0
    }
    
    @IBAction func pressPercentage() {
        if numberOne == 0 {
            let value = Double(labelTextPress.text!)!
            rezult = value / 100
            let n = Decimal(rezult)
            if n.significantFractionalDecimalDigits == 0 {
                rezultInt = Int(rezult)
                labelTextPress.text = String(rezultInt)
                
            } else {
                labelTextPress.text = String(rezult)
            }
        } else {
            let value = Double(labelTextPress.text!)!
            numberTwo = numberOne * (value / 100)
            let n = Decimal(numberTwo)
            if n.significantFractionalDecimalDigits == 0 {
                rezultInt = Int(numberTwo)
                labelTextPress.text = String(rezultInt)
                
            } else {
                numberTwo = round(numberTwo * 1000000) / 1000000
                labelTextPress.text = String(numberTwo)
            }
        }
    }
    
    
    
    @IBAction func pressSwitchPlusMinus() {
        let value = Double(labelTextPress.text!)!
        let valueRezult = -value
        let n = Decimal(value)
        if n.significantFractionalDecimalDigits == 0 {
            rezultInt = Int(valueRezult)
            labelTextPress.text = String(rezultInt)
        } else {
            labelTextPress.text = String(valueRezult)
        }
    }
}

extension Decimal {
    var significantFractionalDecimalDigits: Int {
        return max(-exponent, 0)
    }
}



