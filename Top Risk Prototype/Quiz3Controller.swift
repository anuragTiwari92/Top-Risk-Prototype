//
//  Quiz3Controller.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 11/7/16.
//  Copyright © 2016 SkylerLecroy. All rights reserved.
//

import Foundation
import UIKit

struct QuestionExtd {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
    var MoreInfo : String!
}
class Quiz3Controller: UIViewController {
    
    @IBOutlet var Buttons: [UIButton]!

    @IBOutlet var MenuB: UIButton!
    @IBOutlet var QLabel: UILabel!
    @IBOutlet var LabelEnd: UILabel!
    @IBOutlet var NextBtn: UIBarButtonItem!
    @IBOutlet var EndofQuizMsg: UILabel!
    @IBOutlet var MoreInfoLbl: UILabel!
    
    var Questions = [QuestionExtd]()
    var QNumber = Int()
    var AnswerNumber = Int()
    var MoreInfo = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Questions = [QuestionExtd(Question: "A girl can get pregnant the first time she has intercourse.", Answers: ["True","False"], Answer: 0, MoreInfo: "Many girls think that they cannot get pregnant the first time they have sex, but girls can get pregnant any time they have sexual intercourse." ),
                     
                     QuestionExtd(Question: "A girl cannot get pregnant if she is standing up while having intercourse.", Answers: ["True","False"], Answer: 1, MoreInfo: "Girls can get pregnant during intercourse whether they are standing, sitting, sideways, or upside down." ),
                     
                     QuestionExtd(Question: "A girl cannot get pregnant if she is on her period when she has intercourse.", Answers: ["True","False"], Answer: 1, MoreInfo: "It is possible for a girl to get pregnant if she has intercourse while she is on her period. A woman can become pregnant during her period because the egg can be released early in the cycle before the bleeding has stopped. Also, sperm can live inside a woman for several days before fertilizing the egg."),
                     
                     QuestionExtd(Question: "Anyone can buy condoms at a drug store.", Answers: ["True","False"], Answer: 0, MoreInfo:"Anyone can buy condoms at the drugstore. They can also get them from Planned Parenthood clinics, friends, and sisters/ brothers." ),
                     
                     QuestionExtd(Question: "A girl can get raped by someone she knows.", Answers: ["True","False"], Answer: 0, MoreInfo: "A girl can be raped by someone she knows. Sometimes people call this “date rape.”" ),
                     
                     QuestionExtd(Question: "A condom protects you from most sexually transmitted diseases.", Answers: ["True","False"], Answer: 0, MoreInfo: "A condom does protect you from most sexually transmitted diseases. They must be used all the time and used properly to work.  Another method of birth control will further reduce the risk of a possible pregnancy but not STDs. Only the condom reduces the risk of STDs." ),
                     
                     QuestionExtd(Question: "Girls can get a “shot” that will prevent pregnancy for up to 3 months.", Answers: ["True","False"], Answer: 0, MoreInfo: "There is a shot... called “Depo-Provera”...that girls can get that will prevent pregnancy for up to 3 months. The shot does not protect against sexually transmitted diseases, though." ),
                     
                     QuestionExtd(Question: "A girl does not experience pleasure from sex. Only boys do.", Answers: ["True","False"], Answer: 1, MoreInfo: "Girls do experience sexual pleasure." ),
                     
                     QuestionExtd(Question: "A girl cannot get pregnant if the boy “pulls out” before he “comes” (ejaculates).", Answers: ["True","False"], Answer: 1, MoreInfo: "Girls can get pregnant when a boy “pulls out” before he “comes”. Small amounts of semen and sperm drip from the penis as soon as a boy is aroused. Don’t believe a boy if he tells you, “I can control that.”!!!" ),
                     
                     QuestionExtd(Question: "AIDS is the fourth leading cause of death among women aged 25 - 44.", Answers: ["True","False"], Answer: 0, MoreInfo: "People used to think that AIDS only infected gay men but that is not true. More women are infected all the time." ),
        ]
        Hide()
        PickQuestion()
        NextBtn.isEnabled=false
        EndofQuizMsg.isHidden=true
        MenuB.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func PickQuestion(){
        LabelEnd.text = ""
        MoreInfoLbl.text=""
        
        NextBtn.isEnabled=false
        
        if Questions.count > 0{
            QNumber = 0
            QLabel.text = Questions[QNumber].Question
            AnswerNumber = Questions[QNumber].Answer
            MoreInfo = Questions[QNumber].MoreInfo
            
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(Questions[QNumber].Answers[i], for: UIControlState.normal)
            }
            Questions.remove(at:QNumber)
        }
        else{
            NSLog("Done with quiz!")
            //LabelEnd.text?.append("Quiz done! head back to the chapter!")
            EndofQuizMsg.isHidden=false
            MenuB.isHidden = false
            EndofQuizMsg.text="Quiz is done. Good Job!"
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
        
        MoreInfoLbl.text = MoreInfo
        
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
        
        MoreInfoLbl.text = MoreInfo
        
        if AnswerNumber == 1{
            LabelEnd.text = "That's Correct. Good job!\n\n\(MoreInfo)"
            
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
