//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Mingxuan Qu on 12/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func goBlueDidTapped(_ sender: UIButton) {
        self.view.backgroundColor = UIColor(red: 0.6431, green: 0.8784, blue: 0.9569, alpha: 1.0) /* #a4e0f4 */
    }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        //choose the title we have selected from the segmented control: First, Secont, Third, Fourth
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year majoring in \(majorTextField.text!) and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default) //taken when the user taps a button in an alert.
        
        //to give people a way to respond. For each action you add using the addAction(_:) method, the alert controller configures a button with the action details. When a person taps that action, the alert controller executes the block you provided when creating the action object.
        alertController.addAction(action)
        //The view controller to display over the current view controller’s content.
        //animate the presentation or not
        //The block to execute after the presentation finishes
        present(alertController, animated:true, completion:nil)
    }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text="\(Int(sender.value))"//assign the numberOfPetsLabel to be adjusted by the number of clicks on the stepper
    }
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var majorTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

