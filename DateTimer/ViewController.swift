//
//  ViewController.swift
//  DateTimer
//
//  Created by Yuliya Masalkina on 05.09.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDate: UIDatePicker!
    @IBOutlet weak var secondDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondVC" {
            if let vc = segue.destination as? SecondViewController {
             //   vc.time = Int(textField.text!) ?? 0
            }
        }
    }
    
}

