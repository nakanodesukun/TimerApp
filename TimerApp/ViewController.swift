//
//  ViewController.swift
//  TimerApp
//
//  Created by 中野翔太 on 2022/02/01.
//

import UIKit

class ViewController: UIViewController {

    var timer: Timer?
    var repeatingTimer: Timer?

    var count = 0

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCountLabel()
    }
    func updateCountLabel() {
        label.text = String(count)
    }

    func stopTimer() {
        timer?.invalidate()
        repeatingTimer?.invalidate()

    }
    @IBAction func startButton(_ sender: Any) {


    }

    @IBAction func startRepeatButton(_ sender: Any) {
        stopTimer()
        updateCountLabel()
        repeatingTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self]_ in
            self?.count += 1
            self?.updateCountLabel()

        })
    }
    @IBAction func stopButton(_ sender: Any) {
        stopTimer()
    }


}

