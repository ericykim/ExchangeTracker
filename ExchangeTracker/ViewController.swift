//
//  ViewController.swift
//  ExchangeTracker
//
//  Created by Eric Kim on 7/6/16.
//  Copyright © 2016 com.erickim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fatAmountField: UITextField!
    @IBOutlet weak var fatAmountStepper: UIStepper!
    @IBOutlet weak var dairyAmountField: UITextField!
    @IBOutlet weak var dairyAmountStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeFatAmount(sender: UIStepper) {
        
        sender.value = sender.value > 10 ? 0 : sender.value
        fatAmountField.text = Int(sender.value).description
        
        //Implement Time function
        //        let alertController = UIAlertController(title: "iOScreator", message:
        //            "Hello, world!", preferredStyle: UIAlertControllerStyle.Alert)
        //        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        //
        //        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    
    
    
}