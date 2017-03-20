//
//  ViewController.swift
//  tipcalc
//
//  Created by Luis Rocha on 3/19/17.
//  Copyright © 2017 Luis Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    func calcualteTip() {
        let tipPercentages = [0.18, 0.20, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let defaults = UserDefaults.standard
        let symbol = defaults.string(forKey: "currencySymbol") ?? "$"
        tipLabel.text = String(format: "%@%.2f", symbol, tip)
        totalLabel.text = String(format: "%@%.2f", symbol, total)
    }
    
    @IBAction func onBillChange(_ sender: Any) {
        calcualteTip()
    }
    
    @IBAction func onTipChange(_ sender: Any) {
        calcualteTip()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TipCalculator loading settings")
        let defaults = UserDefaults.standard
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "tipIndex")
        billField.text = defaults.string(forKey: "billAmount")
        calcualteTip()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        billField.becomeFirstResponder()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Settings saving...")
        let defaults = UserDefaults.standard
        defaults.set(billField.text, forKey: "billAmount")
    }
}

