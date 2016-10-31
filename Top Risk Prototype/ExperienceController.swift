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
        ExperienceVideo.loadHTMLString("<html><head><title>.</title><style>body,html,iframe{margin:0;padding:0;}</style></head><body><iframe width=\"\(ExperienceVideo.frame.width)\" height=\"\(ExperienceVideo.frame.height)\" src=\"\(youtbelink2)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe></body></html>", baseURL: nil);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func viewWillDisappear(_ animated: Bool) {
        ExperienceVideo.reload()
        super.viewWillDisappear(animated)
    }
}


