//
//  ViewController.swift
//  Eluxon
//
//  Created by Grazietta Hof on 2017-09-17.
//  Copyright © 2017 Grazietta Hof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var onOffLabel: UILabel!
    @IBOutlet weak var toggleButton: UIButton!
    
    var SwitchStatus: switchStatus = .off
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func buttonWasPressed(_ sender: Any) {
        SwitchStatus.toggle()
        
        if SwitchStatus == .off{
            toggleButton.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            onOffLabel.text = "OFF"
            onOffLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        } else {
            toggleButton.setImage(UIImage(named: "onBtn"), for: .normal)
            onOffLabel.text = "ON"
            onOffLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

