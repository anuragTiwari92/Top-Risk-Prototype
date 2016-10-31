//
//  Quiz1.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 10/5/16.
//  Copyright © 2016 AnuragTiwari. All rights reserved.
//
// black border white fill 40% thinker buttons (height)
//banner chapter name = 
//question should be left alligned paragraph
import Foundation
import UIKit
struct Question {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
}
class Quiz1: UIViewController {
    
    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var QLabel: UILabel!
    @IBOutlet var LabelEnd: UILabel!
    
    
    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Questions = [Question(Question: "Who is the Project Manager", Answers: ["Pooja","David","Jeevan", "Josh"], Answer: 0 ),
                     Question(Question: "LifeCycle planner", Answers: ["Pooja","David","Jeevan","Josh"], Answer: 2 ),
                     Question(Question: "QA Tester", Answers: ["Pooja","David","Jeevan","Josh"], Answer: 1 ),
                     Question(Question: "Implementer", Answers: ["Pooja","David","Jeevan","Josh"], Answer: 3 )]
        Hide()
        PickQuestion()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func PickQuestion(){
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
            LabelEnd.text?.append("Quiz done! head back to the chapter!")
        }
    }
    
    func Hide(){
        LabelEnd.isHidden = true
    }
    func UnHide(){
        LabelEnd.isHidden = false
    }
    
    @IBAction func Btn1(_ sender: AnyObject) {
        UnHide()
        if AnswerNumber == 0{
            LabelEnd.text = "Correct! GoodJob!"
            PickQuestion()
        }
        else{
            NSLog("Wrong!")
            LabelEnd.text = "You are mistaken! think again!"
        }
    }
    @IBAction func Btn2(_ sender: AnyObject) {
        UnHide()
        if AnswerNumber == 1{
            LabelEnd.text = "Correct! GoodJob!"
            PickQuestion()
        }
        else{
            NSLog("Wrong!")
            LabelEnd.text = "You are mistaken! think again!"
        }
    }
    @IBAction func Btn3(_ sender: AnyObject) {
        UnHide()
        if AnswerNumber == 2{
            LabelEnd.text = "Correct! GoodJob!"
            PickQuestion()
        }
        else{
            NSLog("Wrong!")
            LabelEnd.text = "You are mistaken! think again!"
        }
    }
    @IBAction func Btn4(_ sender: AnyObject)
    {
        UnHide()
        if AnswerNumber == 3{
            LabelEnd.text = "Correct! GoodJob!"
            PickQuestion()
        }
        else{
            NSLog("Wrong!")
            LabelEnd.text = "You are mistaken! think again!"
        }
    }
    
    @IBAction func NextQuestion(_ sender: AnyObject) {
        PickQuestion()
    }
}

