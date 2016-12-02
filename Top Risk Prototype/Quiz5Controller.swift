//
//  Quiz5Controller.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 11/16/16.
//  Copyright © 2016 SkylerLecroy. All rights reserved.
//

import UIKit

class Quiz5Controller: UIViewController{
    
    
    @IBOutlet var Count: UILabel!
    @IBOutlet var YourResults: UILabel!
    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var QLabel: UILabel!
    @IBOutlet var EndofQuizMsg1: UITextView!
    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    var totalAs:Int=0
    var totalBs:Int=0
    var totalCs:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Questions = [Question(Question: "You ride the school bus every day.  There is a girl from your Math class who rides the bus, too.  She was really nice to you in class last week, and helped you figure out some of the mysteries of Algebra.  But she dresses kind of weird, and all the kids think her hair looks really stupid.  On the bus on the way home, some friends of yours start pointing at her and giggling.  One of them says to you, “Hey, check out that hairdo!  She looks like a tornado hit her today!”  You respond by:", Answers: ["A. Saying, “Oh yeah, well you look like a Chihuahua yourself, so I wouldn’t talk!”","B. Not saying anything...just nodding your head in silent agreement.","C. Saying, “Actually, her name is Nicki, and I don’t care what her hair looks like... she’s really nice and smart and she just helped me with my math homework.”"], Answer: 0 ),
                     Question(Question: "Your science teacher, Ms. White, explains the procedure for the lab experiment.  You are not sure whether she said to put two or three of the chemicals together.  She is kind of loud and intimidating. You:", Answers: ["A. Say, “Hey Ms. White.  Why don’t you try giving some decent instructions for a change?”","B. Don’t say anything.  You just mix the chemicals together and hope that you don’t blow anything up.","C. You raise your hand and say, “Ms. White, could you please repeat those instructions?  I didn’t hear which of the chemicals to mix together.”"], Answer: 0 ),
                     Question(Question: "You have a friend who always likes to decide what you are going to do on the weekend.  She is mostly pretty nice, even though she is kind of pushy.  On Friday in the cafeteria, she says to you, “I’ve got our weekend all planned out.  We’re going to rent a video.  You’ll sleep over at my house tonight, and we’ll learn to French braid each other’s hair.”  You really wanted to go bowling with some other friends.  You:", Answers: ["A. Say, “Listen Mrs. Bossy-Pants-Of-The-Century.  I am getting sick and tired of you always telling me what to do!  I’m going bowling and you can braid your own stupid hair.”","B.You just shake your head a little bit, but you don’t want to hurt her feelings, so you just say, “okay.”  You decide to go bowling some other time.","C. A nice person and a good listener."], Answer: 0 ),
                     Question(Question: "When I face a new challenge in my life (like learning a new skill or meeting new people) I usually tell myself that:", Answers: ["A. I know I can’t do this so I won’t even try.","B. I don’t think I can do this.","C. Say, “Thank you for the offer, but I already planned to go bowling with some other people.  Would you like to come with us?”"], Answer: 0 ),
                     
        ]
        
        PickQuestion()
        YourResults.isHidden = true
        Count.isHidden = true
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
            //AnswerNumber = Questions[QNumber].Answer
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(Questions[QNumber].Answers[i], for: UIControlState.normal)
            }
            Questions.remove(at:QNumber)
        }
        else{
            NSLog("Done with quiz!")
            
            EndofQuizMsg1.isHidden=false
            YourResults.isHidden = false
            Count.isHidden = false
            Count.text = "The number of A'sthat you selected:  \(totalAs)\nThe number of B's that you selected: \(totalBs)\nThe number of C's that you selected: \(totalCs)"
            EndofQuizMsg1.text="If you answered mostly A’s:\n\nThese are aggressive styles of communication.  In these situations, you may get what you want, but you hurt other people along the way.  Since trust and respect are the foundation of a strong friendship, people who use this style of communication have a difficult time making and keeping friends.  People who communicate aggressively should try to remember the “Golden Rule” and treat others as you would like to be treated.\n\n If you answered mostly B’s:\n\nThese are passive styles of communication.  In these situations, you don’t speak up, either because you don’t know how to or you’re afraid of what might happen if you do.  Going with the flow may help in the short term, but if you feel ignored or taken advantage of, you’ll be more hurt in the long run.  People who communicate passively should remember that their needs and opinions matter just as much as everyone else’s.  Show yourself some love and respect, and speak up!\n\nIf you answered mostly C’s:\n\nThese are assertive styles of communication.  In these situations, you speak your mind while remaining respectful of the other person.  This is the healthiest style of communication because everyone is heard and respected.  Give yourself a pat on the back if you’ve used assertive communication at least once!\n\nAnd if you can’t remember a time when you’ve used it, remember that you can always try it from now on.  It can be difficult to try, especially if you’re used to aggressive or passive styles of communication.  Maybe you could try it once a day, or with one person at a time.  Way to go for making a positive change Good work!"
            
            for i in 0..<Buttons.count{
                Buttons[i].isHidden=true
            }
            QLabel.isHidden=true
            
        }
    }
    
    @IBAction func Btn1(_ sender: Any) {
        totalAs += 1
        PickQuestion()
    }
    @IBAction func Btn2(_ sender: Any) {
        totalBs += 1
        PickQuestion()
    }
    @IBAction func Btn3(_ sender: Any) {
        totalCs += 1
        PickQuestion()
    }
    
    
    
//    @IBAction func Btn1(_ sender: Any) {
//        totalAs += 1
//        PickQuestion()
//    }
//    @IBAction func Btn2(_ sender: Any) {
//        totalBs += 1
//        PickQuestion()
//    }
//    @IBAction func Btn3(_ sender: Any) {
//        totalCs += 1
//        PickQuestion()
//    }


}
