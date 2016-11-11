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
    
    @IBOutlet var NextQ: UIBarButtonItem!
    @IBOutlet var QuizEndLabel: UILabel!
    
    
    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Questions = [Question(Question: "How many sexually active high school students used a condom the last time they had sex?", Answers: ["1 out of every 4 (or 25%)","1 out of every 3 (or 33%)","1 out of every 2 (or 50%)", "More that 1 out of every 2 (above 50%)"], Answer: 3 ),
                     Question(Question: "Each year, ________ sexually active teens contracts an STD every year.", Answers: ["1 in 2","1 in 3","1 in 4","1 in 5"], Answer: 2 ),
                     Question(Question: "Using drugs and/or alcohol ________ the chances of having sex.", Answers: ["increases","decreases","does not effect","i dont know about drugs and alcohol"], Answer: 0 )]
        Hide()
        QuizEndLabel.isHidden = true
        PickQuestion()
        NextQ.isEnabled = false
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
            QuizEndLabel.isHidden = false
            QuizEndLabel.text?.append("Quiz done! head back to the chapter!") 
        }
        NextQ.isEnabled = false
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
            LabelEnd.text = "Correct! Using drugs or alcohol increases the chances of having sex.  They make it more difficult to make good decisions, so it’s easier to be pressured into having sex.  And if you’re pressured into having sex, you might be pressured into other things, like not using a condom.  You might think you’re ok, but chances are that you’re not completely in control.  That gives you a lot to think about.  If the time comes when someone offers you a drink or drugs, ask yourself if you’re ready to risk making bad decisions."
           // PickQuestion()
            NextQ.isEnabled = true
        }
        else{
            NSLog("Wrong!")
            LabelEnd.text = "Oops. Try to find out about this a little more"
        }
    }
    @IBAction func Btn2(_ sender: AnyObject) {
        UnHide()
        if AnswerNumber == 1{
            LabelEnd.text = "Correct! GoodJob!"
           // PickQuestion()
        }
        else{
            NSLog("Wrong!")
            LabelEnd.text = "Oops. Try to find out about this a little more"
        }
    }
    @IBAction func Btn3(_ sender: AnyObject) {
        UnHide()
        if AnswerNumber == 2{
            LabelEnd.text = "Correct! one in four new STD infections occur among youth each year.  This is really something to think about.  You probably know someone who thinks nothing bad will happen to them if they have sex.  Just because they are confident, doesn’t mean they are protected.  Most of the millions young people probably didn’t think they would get an STD either.  It’s better to know about STDs, and be safe, then get infected and have to live with the consequences."
           // PickQuestion()
            NextQ.isEnabled = true
        }
        else{
            NSLog("Wrong!")
            LabelEnd.text = "Oops. Try to find out about this a little more"
        }
    }
    @IBAction func Btn4(_ sender: AnyObject)
    {
        UnHide()
        if AnswerNumber == 3{
            LabelEnd.text = "Correct! Approximately 61% of sexually active high school students use a condom the last time they had sexual intercourse. This still leaves a lot of kids not protected! This means 37% or one third of students do NOT use a condom.  These students could be your friends or people you’re interested in dating.  Try to convince them to use a condom, and even if they don’t listen, make sure you always use one.  Keep your body healthy, and always use protection!"
            //PickQuestion()
            NextQ.isEnabled = true
        }
        else{
            NSLog("Wrong!")
            LabelEnd.text = "Oops. Try to find out about this a little more"
        }
    }
    
    
    @IBAction func NextQuestion(_ sender: Any) {
        PickQuestion()
    }
}

