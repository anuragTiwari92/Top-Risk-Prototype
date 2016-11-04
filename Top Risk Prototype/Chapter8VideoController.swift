//
//  Chapter8VideoController.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 11/3/16.
//  Copyright © 2016 SkylerLecroy. All rights reserved.
//


import UIKit

class Chapter8VideoController: UIViewController{
    
    
    @IBOutlet var Chapter8Video: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let youtubeURL = "https://www.youtube.com/embed/gW9eMMNj3f0"
        
        Chapter8Video.allowsInlineMediaPlayback = true;
        Chapter8Video.loadHTMLString("<html><head><title>.</title><style>body,html,iframe{margin:0;padding:0;}</style></head><body><iframe width=\"\(Chapter8Video.frame.width)\" height=\"\(Chapter8Video.frame.height)\" src=\"\(youtubeURL)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe></body></html>", baseURL: nil);
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func viewWillDisappear(_ animated: Bool) {
        Chapter8Video.reload()
        super.viewWillDisappear(animated)
    }
}
