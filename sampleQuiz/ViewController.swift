//
//  ViewController.swift
//  sampleQuiz
//
//  Created by emi oiso on 2023/11/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.red.cgColor
    }


}

