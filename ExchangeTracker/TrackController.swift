//
//  ViewController.swift
//  ExchangeTracker
//
//  Created by Eric Kim on 7/6/16.
//  Copyright © 2016 com.erickim. All rights reserved.
//

import UIKit

class TrackController: UIViewController {

    
//Implementation of NSUserDefaults
    let defaults = NSUserDefaults.standardUserDefaults()
    
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
    
//Variables for NSUserDefaults for slider
    let fatNumber = "fatNumber"
    let dairyNumber = "dairyNumber"
    let proteinNumber = "proteinNumber"
    let fruitNumber = "fruitNumber"
    let vegetableNumber = "vegetableNumber"
    let starchNumber = "starchNumber"
    
//Variable for NSUserDefaults for stepper
    let fatStep = "fatStep"
    let dairyStep = "dairyStep"
    let proteinStep = "proteinStep"
    let fruitStep = "fruitStep"
    let vegetableStep = "vegetableStep"
    let starchStep = "starchStep"
    
//IBActions for Stepper
    @IBAction func changeFatStepper(sender: UIStepper) {
        fatTextField.text = Int(sender.value).description
        fatStepper.maximumValue = Double(defaults.integerForKey(fatNumber))
        defaults.setInteger(Int(fatStepper.value), forKey: fatStep)
        
    }
    @IBAction func changeDairyStepper(sender: UIStepper) {
        dairyTextField.text = Int(sender.value).description
        dairyStepper.maximumValue = Double(defaults.integerForKey(dairyNumber))
        defaults.setInteger(Int(dairyStepper.value), forKey: dairyStep)
    }
    @IBAction func changeProteinStepper(sender: UIStepper) {
        proteinTextField.text = Int(sender.value).description
        proteinStepper.maximumValue = Double(defaults.integerForKey(proteinNumber))
        defaults.setInteger(Int(proteinStepper.value), forKey: proteinStep)
    }
    @IBAction func changeFruitStepper(sender: UIStepper) {
        fruitTextField.text = Int(sender.value).description
        fruitStepper.maximumValue = Double(defaults.integerForKey(fruitNumber))
        defaults.setInteger(Int(fruitStepper.value), forKey: fruitStep)
    }
    @IBAction func changeVegetableStepper(sender: UIStepper) {
        vegetableTextField.text = Int(sender.value).description
        vegetableStepper.maximumValue = Double(defaults.integerForKey(vegetableNumber))
        defaults.setInteger(Int(vegetableStepper.value), forKey: vegetableStep)
    }
    @IBAction func changeStarchStepper(sender: UIStepper) {
        starchTextField.text = Int(sender.value).description
        starchStepper.maximumValue = Double(defaults.integerForKey(starchNumber))
        defaults.setInteger(Int(starchStepper.value), forKey: starchStep)
    }
    
    
    
//Notification Function
    func scheduleLocal() {
        let settings = UIApplication.sharedApplication().currentUserNotificationSettings()
        
        if settings!.types == .None {
            let ac = UIAlertController(title: "Can't schedule", message: "Either we don't have permission to schedule notifications, or we haven't asked yet.", preferredStyle: .Alert)
            ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(ac, animated: true, completion: nil)
            return
        }
        
        let notification = UILocalNotification()
        
        //set difference variables
        let fatDifference = defaults.integerForKey(fatNumber) - defaults.integerForKey(fatStep)
        let dariyDifference = defaults.integerForKey(dairyNumber) - defaults.integerForKey(dairyStep)
        let proteinDifference = defaults.integerForKey(proteinNumber) - defaults.integerForKey(proteinStep)
        let fruitDifference = defaults.integerForKey(fruitNumber) - defaults.integerForKey(fruitStep)
        let vegetableDifference = defaults.integerForKey(vegetableNumber) - defaults.integerForKey(vegetableStep)
        let starchDifference = defaults.integerForKey(starchStep) - defaults.integerForKey(starchStep)
        print(fatDifference)

        
        if  fatDifference == 0 && dariyDifference == 0 && proteinDifference == 0 && fruitDifference == 0 && vegetableDifference == 0 && starchDifference == 0 {
            notification.alertBody = "You have met all exchanges for today"
        }
        else {
            notification.alertBody = "You are missing some exchanges"
        }
        notification.fireDate = NSDate(timeIntervalSinceNow: 5)
        notification.alertAction = "be awesome!"
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.userInfo = ["CustomField1": "w00t"]
        notification.repeatInterval = NSCalendarUnit.Minute
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        print("notification")
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fatTextField.text = String(defaults.integerForKey(fatStep))
        fatStepper.value = Double(defaults.integerForKey(fatStep))
        
        dairyTextField.text = String(defaults.integerForKey(dairyStep))
        dairyStepper.value = Double(defaults.integerForKey(dairyStep))
        
        proteinTextField.text = String(defaults.integerForKey(proteinStep))
        proteinStepper.value = Double(defaults.integerForKey(proteinStep))
        
        fruitTextField.text = String(defaults.integerForKey(fruitStep))
        fruitStepper.value = Double(defaults.integerForKey(fruitStep))
        
        vegetableTextField.text = String(defaults.integerForKey(vegetableStep))
        vegetableStepper.value = Double(defaults.integerForKey(vegetableStep))
        
        starchTextField.text = String(defaults.integerForKey(starchStep))
        starchStepper.value = Double(defaults.integerForKey(starchStep))
        
        scheduleLocal()
        
//        print(NSUserDefaults.standardUserDefaults().dictionaryRepresentation().keys.count)
//        for key in (NSUserDefaults.standardUserDefaults().dictionaryRepresentation().keys) {
//            NSUserDefaults.standardUserDefaults().removeObjectForKey(key)
//        }
//        print(NSUserDefaults.standardUserDefaults().dictionaryRepresentation().keys.count)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
}