//
//  ViewController.swift
//  SetDateAndTime
//
//  Created by Mahmut Senbek on 9.12.2022.
//

import UIKit

class ViewController: UIViewController {
var choosenTime = ""
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var showLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(choosenTime)
        button.setTitle("Set", for: UIControl.State.normal)
       
    }
    override func viewWillAppear(_ animated: Bool) {
        button.setTitle("Change", for: UIControl.State.normal)
        showLabel.text = "\(choosenTime)"
    }

    
    @IBAction func changeButton(_ sender: Any) {
        
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
}

