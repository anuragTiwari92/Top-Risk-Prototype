//
//  Chapter5VideoController.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 11/3/16.
//  Copyright © 2016 SkylerLecroy. All rights reserved.
//

import UIKit

class Chapter5VideoController: UIViewController{
    
    @IBOutlet var Chapter5Video: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let youtubeURL = "https://www.youtube.com/embed/P1K1hqJibzc"
        
        Chapter5Video.allowsInlineMediaPlayback = true;
        Chapter5Video.loadHTMLString("<html><head><title>.</title><style>body,html,iframe{margin:0;padding:0;}</style></head><body><iframe width=\"\(Chapter5Video.frame.width)\" height=\"\(Chapter5Video.frame.height)\" src=\"\(youtubeURL)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe></body></html>", baseURL: nil);
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Chapter5Video.reload()
        super.viewWillDisappear(animated)
    }
    
}
