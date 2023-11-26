//
//  quizViewController.swift
//  sampleQuiz
//
//  Created by emi oiso on 2023/11/07.
//

import UIKit

class quizViewController: UIViewController {
    @IBOutlet weak var quizNumberLabel: UILabel!
    @IBOutlet weak var quizTextView: UITextView!
    @IBOutlet weak var ansButton1: UIButton!
    @IBOutlet weak var ansButton2: UIButton!
    @IBOutlet weak var ansButton3: UIButton!
    @IBOutlet weak var ansButton4: UIButton!
    
    var csvArray: [String] = []
    var quizArray: [String] = []
    var quizCount = 0
    var correctCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        csvArray = loadCSV(fileName: "quiz")
        print(csvArray)
        
        quizArray = csvArray[quizCount].components(separatedBy: ",")
        quizNumberLabel.text = "第\(quizCount + 1)問"
        quizTextView.text = quizArray[0]
        ansButton1.setTitle(quizArray[2], for: .normal)
        ansButton2.setTitle(quizArray[3], for: .normal)
        ansButton3.setTitle(quizArray[4], for: .normal)
        ansButton4.setTitle(quizArray[5], for: .normal)
        
        // Do any additional setup after loading the view.
    }
    
    //　ボタンを押した時に呼ばれる
    @IBAction func btnAction(sender: UIButton){
        if sender.tag == Int(quizArray[1]){
            correctCount += 1
            print("正解")
        } else {
            print("不正解")
        }
        print("スコア:\(correctCount)")
        nextQuiz()
    }
    
    func nextQuiz(){
        quizCount += 1
        if quizCount < csvArray.count {
            quizArray = csvArray[quizCount].components(separatedBy: ",")
            
            quizNumberLabel.text = "第\(quizCount + 1)問"
            quizTextView.text = quizArray[0]
            ansButton1.setTitle(quizArray[2], for: .normal)
            ansButton2.setTitle(quizArray[3], for: .normal)
            ansButton3.setTitle(quizArray[4], for: .normal)
//            ↓消したらイスの問題のページが出力された。
            ansButton4.setTitle(quizArray[5], for: .normal)
            
        } else {
            performSegue(withIdentifier: "toScoreVC", sender: nil)
        }
        
    }
    
    func loadCSV(fileName: String) -> [String]{
        let csvBubdle = Bundle.main.path(forResource:fileName,ofType: "csv")!
        do {
            let csvData = try String(contentsOfFile: csvBubdle,encoding: String.Encoding.utf8)
            let lineChange = csvData.replacingOccurrences(of: "\r", with: "\n")
            csvArray = lineChange.components(separatedBy: "\n")
            csvArray.removeLast()
        } catch {
            print("エラー")
        }
        return csvArray
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
