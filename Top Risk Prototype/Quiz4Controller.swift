//
//  Quiz4Controller.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 11/7/16.
//  Copyright © 2016 SkylerLecroy. All rights reserved.
//

import Foundation
import UIKit

class Quiz4Controller: UIViewController {
    
    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var QLabel: UILabel!

    
    @IBOutlet var YourResults: UILabel!
    @IBOutlet var Count: UILabel!
    @IBOutlet var EndofQuizMsg1: UITextView!
    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    var totalABs:Int=0
    var totalCDs:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Questions = [Question(Question: "When I start to feel bad about myself, I usually:", Answers: ["A. Go hide in my closet and hope nobody finds me.","B. Take time to think about every time I’ve ever failed in my life.","C. Stop and think about some of my past accomplishments.","D. Tell myself that I have a lot of great personal qualities to feel good about."], Answer: 0 ),
                     Question(Question: "My favorite thing about myself is:", Answers: ["A. What favorite thing?  I don’t have a favorite thing about myself.","B. Hey, I’m not comfortable saying nice things about myself, okay?","C. I am smart, caring, and have a great sense of humor.","D. I have some great talents like dancing, sports, etc.  "], Answer: 0 ),
                     Question(Question: "If somebody asked me to describe myself, I would say that I am:", Answers: ["A. Kind of stupid.","B. Just an okay person.  Nobody special.","C. A nice person and a good listener.","D. A strong, confident, smart girl."], Answer: 0 ),
                     Question(Question: "When I face a new challenge in my life (like learning a new skill or meeting new people) I usually tell myself that:", Answers: ["A. I know I can’t do this so I won’t even try.","B. I don’t think I can do this.","C. I’m a bit nervous but I’ll give it my best.","D. New challenges are exciting, and I often do well at things the first time I try."], Answer: 0 ),
                     Question(Question: "Some of the positive things I can say to myself today are:", Answers: ["A. Forget positive things.  I’m a total idiot!","B. I’m too depressed to say something nice to myself.","C. I may not be perfect, but I’m pretty cool.","D. I’m a smart, caring person."], Answer: 0 ),
        ]
        
        PickQuestion()
        Count.isHidden = true
        YourResults.isHidden = true
        EndofQuizMsg1.isHidden=true
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
            YourResults.isHidden = false
            Count.isHidden = false
            Count.text = "The number of A's/ B's that you selected:  \(totalABs)\nThe number of C's/ D's that you selected: \(totalCDs)"
            EndofQuizMsg1.isHidden=false
            
            EndofQuizMsg1.text="If you answered mostly A’s and B’s:\n\nIt’s time to learn some new skills to pump yourself up! You’ve probably been spending a lot of energy taking yourself on a downward spiral. You might even think that it’s conceited – or “stuck up” – to say nice things about yourself, but it’s not. \nGood job!\n\nYou can do this! And remember, if you’re feeling really down, it’s smart to ask for some help from a teacher, counselor, or other adult you trust. Keep reading this unit, too, and you can learn some other ways to turn a downward spiral into an upward spiral. Good luck!\n\nIf you answered mostly C’s and D’s:\n\nYou already practice some good ways to take yourself on an upward spiral. Saying positive, encouraging things to yourself helps you to try new things and succeed at many tasks. Your self confidence grows when you think positively. You probably know that nobody can do everything “perfectly”, so you remember to do your best and congratulate yourself for trying hard. You know that it’s normal to feel down sometimes, but you don’t stay down very long.\n\nKeep reading this unit to get some other good ways to take yourself on an upward spiral. Good work!"
            
            for i in 0..<Buttons.count{
                Buttons[i].isHidden=true
            }
            QLabel.isHidden=true
            
        }
    }
    @IBAction func Btn1(_ sender: Any) {
        totalABs += 1
        PickQuestion()
    }
    
    @IBAction func Btn2(_ sender: Any) {
        totalABs += 1
        PickQuestion()
    }
    @IBAction func Btn3(_ sender: Any) {
        totalCDs += 1
        PickQuestion()
    }
    
    @IBAction func Btn4(_ sender: Any) {
        totalCDs += 1
        PickQuestion()
    }
}
