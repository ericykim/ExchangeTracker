//
//  ViewController.swift
//  ExchangeTracker
//
//  Created by Eric Kim on 7/6/16.
//  Copyright © 2016 com.erickim. All rights reserved.
//

import UIKit

class TrackController: UIViewController {

//IBOutlets for Track
    @IBOutlet weak var fatTextField: UITextField!
    @IBOutlet weak var fatStepper: UIStepper!
    
    @IBOutlet weak var dairyTextField: UITextField!
    @IBOutlet weak var dairyStepper: UIStepper!
    
    @IBOutlet weak var proteinTextField: UITextField!
    @IBOutlet weak var proteinStepper: UIStepper!
    
    @IBOutlet weak var fruitTextField: UITextField!
    @IBOutlet weak var fruitStepper: UIStepper!
    
    @IBOutlet weak var vegetableTextField: UITextField!
    @IBOutlet weak var vegetableStepper: UIStepper!
    
    @IBOutlet weak var starchTextField: UITextField!
    @IBOutlet weak var starchStepper: UIStepper!
    

    
//IBActions for Stepper
    @IBAction func changeFatStepper(sender: UIStepper) {
        fatTextField.text = Int(sender.value).description
        if sender.value == 10 {
            sender.value = 0
        }
    }
    @IBAction func changeDairyStepper(sender: UIStepper) {
        dairyTextField.text = Int(sender.value).description
    }
    @IBAction func changeProteinStepper(sender: UIStepper) {
        proteinTextField.text = Int(sender.value).description
    }
    @IBAction func changeFruitStepper(sender: UIStepper) {
        fruitTextField.text = Int(sender.value).description
    }
    @IBAction func changeVegetableStepper(sender: UIStepper) {
        vegetableTextField.text = Int(sender.value).description
    }
    @IBAction func changeStarchStepper(sender: UIStepper) {
        starchTextField.text = Int(sender.value).description
    }
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func changeFatAmount(sender: UIStepper) {
//        
//        sender.value = sender.value > 10 ? 0 : sender.value
//        fatAmountField.text = Int(sender.value).description
//        
//        //Implement Time function
//        //        let alertController = UIAlertController(title: "iOScreator", message:
//        //            "Hello, world!", preferredStyle: UIAlertControllerStyle.Alert)
//        //        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
//        //
//        //        self.presentViewController(alertController, animated: true, completion: nil)
//    }
    
    
    
    
    
}