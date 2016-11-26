//
//  Quiz2Controller.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 11/7/16.
//  Copyright © 2016 SkylerLecroy. All rights reserved.
//

import Foundation
import UIKit

class Quiz2Controller: UIViewController {
    
    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var QLabel: UILabel!
    
    @IBOutlet var Count: UILabel!
    @IBOutlet var YourResultsTitle: UILabel!
    @IBOutlet var EndofQuizMsg: UITextView!
    
    @IBOutlet var MenuB: UIButton!
    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    var Male:Int=0
    var Female:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Questions = [Question(Question: "Is the principal of your school?", Answers: ["Male","Female"], Answer: 0),
                     Question(Question: "Is the mayor of your city?", Answers: ["Male","Female"], Answer: 0),
                     Question(Question: "Is the governor of your state?", Answers: ["Male","Female"], Answer: 0),
                     Question(Question: "Is the Vice President of the United States?", Answers: ["Male","Female"], Answer: 0),
                     Question(Question: "Is the President of the United States?", Answers: ["Male","Female"], Answer: 0),
        ]
        
        PickQuestion()
        MenuB.isHidden = true
        Count.isHidden = true
        EndofQuizMsg.isHidden=true
        YourResultsTitle.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func PickQuestion()
    {
        
        
        
        if Questions.count > 0{
            QNumber = 0
            QLabel.text = Questions[QNumber].Question
            AnswerNumber = Questions[QNumber].Answer
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(Questions[QNumber].Answers[i], for: UIControlState.normal)
            }
            Questions.remove(at:QNumber)
        }
        else{
            NSLog("Done with quiz!")
            MenuB.isHidden = false
            Count.isHidden = false
            Count.text = "The number of Males:     \(Male)\nThe number of Females: \(Female)"
            YourResultsTitle.isHidden = false
            EndofQuizMsg.isHidden=false
            
            EndofQuizMsg.text="These are the number of Male and Female individuals you selected. \n\nMost girls will have only one or two circles around \"female\".  We have never had a female president or vice president in the United States. Can you believe it?!! Other countries have had women presidents and some states have women as governors, but most people who hold important political office are still men. \n\nWhat does this tell you about women’s roles in society today? It tells us that progress is slow and we need to support more women who run for political office.\n\nAre there more women in office today than there were 100 years ago? Absolutely. Things are changing for the better. Maybe in another 100 years there will be about the same number of women and men in powerful leadership roles. You can be a part of that movement. Be a strong and intelligent woman, and support other women too!"
            
            for i in 0..<Buttons.count{
                Buttons[i].isHidden=true
            }
            QLabel.isHidden=true
            
        }
    }
    @IBAction func Btn1(_ sender: Any) {
        Male += 1
        PickQuestion()
    }
    
    @IBAction func Btn2(_ sender: Any) {
        Female += 1
        PickQuestion()
    }
}
