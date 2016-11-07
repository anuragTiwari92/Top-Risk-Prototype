//
//  Chapter6VideoController.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 11/7/16.
//  Copyright © 2016 SkylerLecroy. All rights reserved.
//

import UIKit

class Chapter6VideoController: UIViewController {
    
    @IBOutlet var Chapter6Video: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let youtubeURL = "https://www.youtube.com/embed/P1K1hqJibzc"
        
        Chapter6Video.allowsInlineMediaPlayback = true
        Chapter6Video.loadHTMLString("<html><head><title>.</title><style>body,html,iframe{margin:0;padding:0;}</style></head><body><iframe width=\"\(Chapter6Video.frame.width)\" height=\"\(Chapter6Video.frame.height)\" src=\"\(youtubeURL)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe></body></html>", baseURL: nil)
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Chapter6Video.reload()
        super.viewWillDisappear(animated)
    }
    
    
}

