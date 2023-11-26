//
//  scoreViewController.swift
//  sampleQuiz
//
//  Created by emi oiso on 2023/11/07.
//

import UIKit

class scoreViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var sharebutton: UIButton!
    @IBOutlet var returnButton: UIButton!
    
    var correct = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "\(correct)問正解"
        sharebutton.layer.borderWidth = 2
        sharebutton.layer.borderColor = UIColor.black.cgColor
        returnButton.layer.borderWidth = 2
        returnButton.layer.borderColor = UIColor.black.cgColor

        
        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func shareButtonAction(_ sender: Any) {
            let activityItems = ["\(correct)問正解しました。","#クイズアプリ"]
            let activityVC = UIActivityViewController(activityItems:activityItems,applicationActivities: nil)
            self.present(activityVC,animated: true)
    
    }
    @IBAction func toTopButtonAction(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
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
