//
//  scoreViewController.swift
//  sampleQuiz
//
//  Created by emi oiso on 2023/11/07.
//

import UIKit

class scoreViewController: UIViewController {
    
    var correct = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toTopButtonAction(_ sender: Any) {
        self.presentingViewController?.presentedViewController?.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
