//
//  Quiz3Controller.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 11/7/16.
//  Copyright © 2016 SkylerLecroy. All rights reserved.
//

import Foundation
import UIKit


class Quiz3Controller: UIViewController {
    
    @IBOutlet var Buttons: [UIButton]!
    
    @IBOutlet var QLabel: UILabel!
    @IBOutlet var LabelEnd: UILabel!
    @IBOutlet var NextBtn: UIBarButtonItem!
    @IBOutlet var EndofQuizMsg: UILabel!
    
    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Questions = [Question(Question: "A girl can get pregnant the first time she has intercourse.", Answers: ["True","False"], Answer: 0 ),
                     Question(Question: "A girl cannot get pregnant if she is standing up while having intercourse.", Answers: ["True","False"], Answer: 1 ),
                     Question(Question: "A girl cannot get pregnant if she is on her period when she has intercourse.", Answers: ["True","False"], Answer: 1 ),
                     Question(Question: "Anyone can buy condoms at a drug store.", Answers: ["True","False"], Answer: 0 ),
                     Question(Question: "A girl can get raped by someone she knows.", Answers: ["True","False"], Answer: 0 ),
                     Question(Question: "A condom protects you from most sexually transmitted diseases.", Answers: ["True","False"], Answer: 0 ),
                     Question(Question: "Girls can get a “shot” that will prevent pregnancy for up to 3 months.", Answers: ["True","False"], Answer: 0 ),
                     Question(Question: "A girl does not experience pleasure from sex.  Only boys do.", Answers: ["True","False"], Answer: 1 ),
                     Question(Question: "A girl cannot get pregnant if the boy “pulls out” before he “comes” (ejaculates).", Answers: ["True","False"], Answer: 1 ),
                     Question(Question: "AIDS is the fourth leading cause of death among women aged 25 - 44.", Answers: ["True","False"], Answer: 0 ),
        ]
        Hide()
        PickQuestion()
        NextBtn.isEnabled=false
        EndofQuizMsg.isHidden=true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func PickQuestion(){
        LabelEnd.text = ""
        NextBtn.isEnabled=false
        
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
            //LabelEnd.text?.append("Quiz done! head back to the chapter!")
            EndofQuizMsg.isHidden=false
            EndofQuizMsg.text="Quiz is done.\n Please head back to the chapter."
            for i in 0..<Buttons.count{
                Buttons[i].isHidden=true
            }
            QLabel.isHidden=true
            LabelEnd.isHidden=true
            NextBtn.isEnabled=false
        }
    }
    
    func Hide(){
        LabelEnd.isHidden = true
    }
    func UnHide(){
        LabelEnd.isHidden = false
    }
    
    @IBAction func Btn1(_ sender: Any) {
        UnHide()
        if AnswerNumber == 0{
            LabelEnd.text = "That's Correct. Good job!"
            //PickQuestion()
            NextBtn.isEnabled=true
        }
        else{
            NSLog("Wrong!")
            LabelEnd.text = "Incorrect. Try again!"
        }
    }
    
    @IBAction func Btn2(_ sender: Any) {
        UnHide()
        if AnswerNumber == 1{
            LabelEnd.text = "That's Correct. Good job!"
            //PickQuestion()
            NextBtn.isEnabled=true
        }
        else{
            NSLog("Wrong!")
            LabelEnd.text = "Incorrect. Try again!"
        }
    }
    @IBAction func NextQuestion(_ sender: Any) {
        PickQuestion()
    }
    
}
