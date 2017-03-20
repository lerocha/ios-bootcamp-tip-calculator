//
//  SettingsViewController.swift
//  tipcalc
//
//  Created by Luis Rocha on 3/19/17.
//  Copyright © 2017 Luis Rocha. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    @IBOutlet weak var currencySymbolField: UITextField!
    
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Settings loading...")
        let defaults = UserDefaults.standard
        defaultTipControl.selectedSegmentIndex = defaults.integer(forKey: "tipIndex")
        currencySymbolField.text = defaults.string(forKey: "currencySymbol") ?? "$"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Settings saving...")
        let defaults = UserDefaults.standard
        defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "tipIndex")
        defaults.set(currencySymbolField.text, forKey: "currencySymbol")
    }
}
