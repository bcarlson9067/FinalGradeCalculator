//
//  NewViewController.swift
//  FinalGradeCalculator
//
//  Created by Bailey Carlson on 10/30/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    @IBOutlet weak var newCurrentTextField: UITextField!
    @IBOutlet weak var newDesiredGradeControl: UISegmentedControl!
    @IBOutlet weak var newFinalWorthTextField: UITextField!
    @IBOutlet weak var newAnswerLabel: UILabel!
    @IBOutlet weak var newExtraCreditLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func whenButtonPressed(_ sender: Any) {
        if let newCurrentGrade = Double(newCurrentTextField.text!), let newFinalWorth = Double(newFinalWorthTextField.text!) {
            let newWeightedFinal = newFinalWorth / 100.0
            
            switch newDesiredGradeControl.selectedSegmentIndex {
            case 0:
                let answer = (90.0 - newCurrentGrade * (1.0 - newWeightedFinal))/newWeightedFinal
                let roundedAnswer = (answer * 100).rounded() / 100
                newAnswerLabel.text = "\(roundedAnswer)%"
                if roundedAnswer > 100 {
                    view.backgroundColor = UIColor.red
                    newExtraCreditLabel.text = "Please ask your teacher for extra credit."
                }
                else {
                    view.backgroundColor = UIColor.init(red: 0, green: 147/255, blue: 0, alpha: 1)
                    newExtraCreditLabel.text = " "
                }
            case 1:
                let answer = (80.0 - newCurrentGrade * (1.0 - newWeightedFinal))/newWeightedFinal
                let roundedAnswer = (answer * 100).rounded() / 100
                newAnswerLabel.text = "\(roundedAnswer)%"
                if roundedAnswer > 100 {
                    view.backgroundColor = UIColor.red
                    newExtraCreditLabel.text = "Please ask your teacher for extra credit."
                }
                else {
                    view.backgroundColor = UIColor.init(red: 0, green: 147/255, blue: 0, alpha: 1)
                    newExtraCreditLabel.text = " "
                }
            case 2:
                let answer = (70.0 - newCurrentGrade * (1.0 - newWeightedFinal))/newWeightedFinal
                let roundedAnswer = (answer * 100).rounded() / 100
                newAnswerLabel.text = "\(roundedAnswer)%"
                if roundedAnswer > 100 {
                    view.backgroundColor = UIColor.red
                    newExtraCreditLabel.text = "Please ask your teacher for extra credit."
                }
                else {
                    view.backgroundColor = UIColor.init(red: 0, green: 147/255, blue: 0, alpha: 1)
                    newExtraCreditLabel.text = " "
                }
            case 3:
                let answer = (60.0 - newCurrentGrade * (1.0 - newWeightedFinal))/newWeightedFinal
                let roundedAnswer = (answer * 100).rounded() / 100
                newAnswerLabel.text = "\(roundedAnswer)%"
                if roundedAnswer > 100 {
                    view.backgroundColor = UIColor.red
                    newExtraCreditLabel.text = "Please ask your teacher for extra credit."
                }
                else {
                    view.backgroundColor = UIColor.init(red: 0, green: 147/255, blue: 0, alpha: 1)
                    newExtraCreditLabel.text = " "
                }
            default: break
            }
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
