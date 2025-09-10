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
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var isTimerRunning = false
    var time = 0
    
    var inititalDate: Date?
    var nextDate: Date?
    var resultDate: Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //показываю даты из первого экрана
        setDate(inititalDate, to: firstDateLabel)
        setDate(nextDate, to: secondDateLabel)
        
        //в таймере показываю сначала первую дату
        resultDate = inititalDate
        setDate(resultDate, to: timerLabel)
    }
    
    @objc func countTime() {

        guard let current = resultDate, let target = nextDate else {
            timer.invalidate()
            return
        }
        
        if let newDate = Calendar.current.date(byAdding: .hour, value: 1, to: current) {
            //когда достигаем второй даты, таймер отключается
                    if newDate >= target {
                        resultDate = target
                        setDate(resultDate, to: timerLabel)
                        timer.invalidate()
                    } else {
                        resultDate = newDate
                        setDate(resultDate, to: timerLabel)
                    }
                }
    }
  
    
    @IBAction func startTimer(_ sender: Any) {
        if isTimerRunning {
            return
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(countTime), userInfo: nil, repeats: true)
        isTimerRunning = true
    }
    
    @IBAction func stopTimer(_ sender: Any) {
        timer.invalidate()
        isTimerRunning = false
    }
    
    @IBAction func restartTimer(_ sender: Any) {
        timer.invalidate()
        isTimerRunning = false
        
        resultDate = inititalDate
        setDate(inititalDate, to: timerLabel)
    }
    
    
    // функция для изменения даты в строку с последующим подставлением значения в лейбл
    func setDate(_ date: Date?, to label: UILabel) {
        
        guard let date = date else {
                label.text = "—"   // подстраховка если будет nil
                return
            }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy, EEE HH:mm"
        label.text = formatter.string(from: date)
    }
}
