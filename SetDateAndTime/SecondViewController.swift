//
//  SecondViewController.swift
//  SetDateAndTime
//
//  Created by Mahmut Senbek on 9.12.2022.
//

import UIKit

class SecondViewController: UIViewController {

    var selectedTime = ""
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var todayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func dateSelectedFromDatePicker (_ : AnyObject) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd-MMM-yyyy HH:mm"
           todayLabel.text = dateFormatter.string(from: datePicker.date)

        }

    
    @IBAction func doneButton(_ sender: Any) {
        
        if todayLabel.text == "Date" {
            let alert = UIAlertController(title: "Select date and time", message: "", preferredStyle: UIAlertController.Style.actionSheet)
            let okButton = UIAlertAction(title: "Ok!", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }else {
            selectedTime = todayLabel.text!
            //print(selectedTime)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFirstVC" {
            
            let destinationVC = segue.destination as! ViewController
            destinationVC.choosenTime = selectedTime
            
        }
    }

}
