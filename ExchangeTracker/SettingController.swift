//
//  SettingController.swift
//  ExchangeTracker
//
//  Created by Eric Kim on 7/6/16.
//  Copyright © 2016 com.erickim. All rights reserved.
//

import UIKit

class SettingController: UIViewController {
    
//IBOutlets for Settings
    @IBOutlet weak var fatSliderText: UITextField!
    @IBOutlet weak var fatSlider: UISlider!
    
    @IBOutlet weak var dairySliderText: UITextField!
    @IBOutlet weak var dairySlider: UISlider!
    
    @IBOutlet weak var proteinSliderText: UITextField!
    @IBOutlet weak var proteinSlider: UISlider!
    
    @IBOutlet weak var fruitSliderText: UIStackView!
    @IBOutlet weak var fruitSlider: UISlider!
    
    @IBOutlet weak var vegetableSliderText: UITextField!
    @IBOutlet weak var vegetableSlider: UISlider!
    
    @IBOutlet weak var starchSliderText: UITextField!
    @IBOutlet weak var starchSlider: UISlider!
    
//IBActions for Slider
    @IBAction func changeFatSlider(sender: UISlider) {
        fatSliderText.text = Int(sender.value).description
    }
    @IBAction func changeDairySlider(sender: AnyObject) {
    }
    @IBAction func changeProteinSlider(sender: AnyObject) {
    }
    @IBAction func changeFruitSlider(sender: AnyObject) {
    }
    @IBAction func changeVegetableSlider(sender: AnyObject) {
    }
    @IBAction func changeStarchSlider(sender: AnyObject) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
