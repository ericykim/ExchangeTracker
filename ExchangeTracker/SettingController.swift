//
//  SettingController.swift
//  ExchangeTracker
//
//  Created by Eric Kim on 7/6/16.
//  Copyright © 2016 com.erickim. All rights reserved.
//

import UIKit




class SettingController: UIViewController {

//Implementation of NSUserDefaults
    let defaults = NSUserDefaults.standardUserDefaults()
    
//IBOutlets for Settings
    @IBOutlet weak var fatSliderText: UITextField!
    @IBOutlet weak var fatSlider: UISlider!
    
    @IBOutlet weak var dairySliderText: UITextField!
    @IBOutlet weak var dairySlider: UISlider!
    
    @IBOutlet weak var proteinSliderText: UITextField!
    @IBOutlet weak var proteinSlider: UISlider!
    
    @IBOutlet weak var fruitSliderText: UITextField!
    @IBOutlet weak var fruitSlider: UISlider!
    
    @IBOutlet weak var vegetableSliderText: UITextField!
    @IBOutlet weak var vegetableSlider: UISlider!
    
    @IBOutlet weak var starchSliderText: UITextField!
    @IBOutlet weak var starchSlider: UISlider!
    
//Variables for NSUserDefaults
    let fatNumber = "fatNumber"
    let dairyNumber = "dairyNumber"
    let proteinNumber = "proteinNumber"
    let fruitNumber = "fruitNumber"
    let vegetableNumber = "vegetableNumber"
    let starchNumber = "starchNumber"
//IBActions for Slider
    @IBAction func changeFatSlider(sender: UISlider) {
        fatSliderText.text = Int(sender.value).description
        defaults.setInteger(Int(fatSlider.value), forKey: fatNumber)
        print(defaults.integerForKey(fatNumber))
    }
    @IBAction func changeDairySlider(sender: UISlider) {
        dairySliderText.text = Int(sender.value).description
        defaults.setInteger(Int(dairySlider.value), forKey: dairyNumber)
        print(defaults.integerForKey(dairyNumber))
    }
    @IBAction func changeProteinSlider(sender: UISlider) {
        proteinSliderText.text = Int(sender.value).description
        defaults.setInteger(Int(proteinSlider.value), forKey: proteinNumber)
        print(defaults.integerForKey(proteinNumber))
    }
    @IBAction func changeFruitSlider(sender: UISlider) {
        fruitSliderText.text = Int(sender.value).description
        defaults.setInteger(Int(fruitSlider.value), forKey: fruitNumber)
        print(defaults.integerForKey(fruitNumber))
    }
    @IBAction func changeVegetableSlider(sender: UISlider) {
        vegetableSliderText.text = Int(sender.value).description
        defaults.setInteger(Int(vegetableSlider.value), forKey: vegetableNumber)
        print(defaults.integerForKey(vegetableNumber))
    }
    @IBAction func changeStarchSlider(sender: UISlider) {
        starchSliderText.text = Int(sender.value).description
        defaults.setInteger(Int(starchSlider.value), forKey: starchNumber)
        print(defaults.integerForKey(starchNumber))
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fatSlider.value = Float(defaults.integerForKey(fatNumber))
        dairySlider.value = Float(defaults.integerForKey(dairyNumber))
        proteinSlider.value = Float(defaults.integerForKey(proteinNumber))
        fruitSlider.value = Float(defaults.integerForKey(fruitNumber))
        vegetableSlider.value = Float(defaults.integerForKey(vegetableNumber))
        starchSlider.value = Float(defaults.integerForKey(starchNumber))
        
        fatSliderText.text = String(defaults.integerForKey(fatNumber))
        dairySliderText.text = String(defaults.integerForKey(dairyNumber))
        proteinSliderText.text = String(defaults.integerForKey(proteinNumber))
        fruitSliderText.text = String(defaults.integerForKey(fruitNumber))
        vegetableSliderText.text = String(defaults.integerForKey(vegetableNumber))
        starchSliderText.text = String(defaults.integerForKey(starchNumber))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
