//
//  Quiz6Controller.swift
//  Top Risk Prototype
//
//  Created by SudhishnaSendhilvelan on 11/8/16.
//  Copyright © 2016 SkylerLecroy. All rights reserved.
//

import Foundation
import UIKit

class Quiz6Controller: UIViewController {
    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var QLabel: UILabel!
    
    
    @IBOutlet var Count: UILabel!
    @IBOutlet var YourResults: UILabel!
    @IBOutlet var FinalResLabel: UITextView!
    
    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    var totalABCs:Int=0
    var totalDs:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Questions = [Question(Question: "Problem solving:", Answers: ["A. Isn’t very important because I never have any problems.","B. Is depressing, because who wants to talk about problems anyway?","C. Only matters in math class.","D. Is a really useful skill to have."], Answer: 0 ),
                     Question(Question: "When I have a problem to solve, I usually:", Answers: ["A. Ignore it and hope that it will go away.","B. Wait until the last possible minute and then do something quickly, without thinking about it.","C. Let somebody else make a decision for me.","D. Try to imagine all of the possible solutions, and then choose the best one."], Answer: 0 ),
                     Question(Question: "Problem solving can only be used in situations where:", Answers: ["A. Things have gotten really bad.","B. You’ll get in trouble unless you come up with a solution.","C. Somebody wants you to do something different.","D. You have awareness that there is a problem."], Answer: 0 ),
                     Question(Question: "If a friend came to me with a difficult problem I would tell her to:", Answers: ["A. Keep her problems to herself.","B. Decide what to do by saying eenie meenie minie mo.","C. Forget about the problem and just eat some ice cream instead. ","D. Sit down with her and try to think of as many possible solutions as we could."], Answer: 0 ),
        ]
        
        PickQuestion()
        YourResults.isHidden = true
        Count.isHidden = true
        FinalResLabel.isHidden=true
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
            YourResults.isHidden = false
            Count.isHidden = false
            FinalResLabel.isHidden=false
            Count.text = "The number of A's B's C's selected: \(totalABCs)\nThe number of D's selected:               \(totalDs)"
            FinalResLabel.text="If you answered A, B, or C to any of the questions you have some skills to learn to be a good problem solver!\n\nThe answers in choice D to the questions reflect some of the important aspects of problem solving. \n\nFirst of all problem-solving is a skill – something anyone can get better at if they practice. Yes, that includes your parents!\n\nThe most critical part of the skill is recognizing you have a problem and thinking of as many solutions as you can.\n\nJust for practice take a day and try to think of lots of solutions to the problems you experience for that day."
            
            for i in 0..<Buttons.count{
                Buttons[i].isHidden=true
            }
            QLabel.isHidden=true
            
        }
    }
    
    @IBAction func Btn1(_ sender: Any) {
        totalABCs += 1
        PickQuestion()
    }
    
    @IBAction func Btn2(_ sender: Any) {
        totalABCs += 1
        PickQuestion()
    }
    
    @IBAction func Btn3(_ sender: Any) {
        totalABCs += 1
        PickQuestion()
    }
    
    @IBAction func Btn4(_ sender: Any) {
        totalDs += 1
        PickQuestion()
    }
}
