//
//  SecondViewController.swift
//  DateTimer
//
//  Created by Yuliya Masalkina on 06.09.2025.
//

import UIKit

class SecondViewController: ViewController {
    
    @IBOutlet weak var firstDateLabel: UILabel!
    @IBOutlet weak var secondDateLabel: UILabel!
    
    var timer: Timer?
    var time = 0
    var inititalDate: Date?
    var nextDate: Date?
    var resultDate: Date?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    @IBAction func startTimer(_ sender: Any) {
    }
    
    @IBAction func stopTimer(_ sender: Any) {
    }
    
    @IBAction func restartTimer(_ sender: Any) {
    }
}
