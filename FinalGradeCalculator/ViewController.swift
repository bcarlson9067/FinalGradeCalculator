//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by Bailey Carlson on 10/25/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var currentTextField: UITextField!
    @IBOutlet weak var desiredTextField: UITextField!
    @IBOutlet weak var finalTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var extraCreditLabel: UILabel!
    
    
    @IBAction func unwindToBlue(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func whenButtonPressed(_ sender: Any) {
        if let currentGrade = Double(currentTextField.text!), let desiredGrade = Double(desiredTextField.text!), let finalWorth = Double(finalTextField.text!) {
            let weightedFinal = finalWorth / 100.0
            let answer = (desiredGrade - currentGrade * (1.0 - weightedFinal))/weightedFinal
            let roundedAnswer = (answer * 100).rounded() / 100
            answerLabel.text = "\(roundedAnswer)%"
            if roundedAnswer > 100 {
                view.backgroundColor = UIColor.red
                extraCreditLabel.text = "Please ask your teacher for extra credit."
            }
            else {
                view.backgroundColor = UIColor.init(red: 0, green: 147/255, blue: 0, alpha: 1)
                extraCreditLabel.text = " "
            }
        }
        else {
            answerLabel.text = " "
        }
    }
    
}
