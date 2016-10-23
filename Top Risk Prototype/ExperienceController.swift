//
//  ExperienceController.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 10/22/16.
//  Copyright © 2016 AnuragTiwari. All rights reserved.
//

import UIKit

class ExperienceController: UIViewController {

    @IBOutlet var ExperienceVideo: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let youtbelink2 = "https://www.youtube.com/embed/SCGopFuIzLI"
        
        ExperienceVideo.allowsInlineMediaPlayback = true;
        ExperienceVideo.loadHTMLString("<iframe width=\"\(ExperienceVideo.frame.width)\" height=\"\(ExperienceVideo.frame.height)\" src=\"\(youtbelink2)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
