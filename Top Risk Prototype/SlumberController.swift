//
//  SlumberController.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 9/29/16.
//  Copyright © 2016 AnuragTiwari. All rights reserved.
//


import UIKit

class SlumberController: UIViewController {
    
    @IBOutlet var SlumberVideo: UIWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //the variable below is where the youtube videos can be changed/updated - Anurag
       let ytURL = "https://www.youtube.com/embed/VPA8y06o0EQ"
        SlumberVideo.allowsInlineMediaPlayback = true;
        SlumberVideo.loadHTMLString("<html><head><title>.</title><style>body,html,iframe{margin:0;padding:0;}</style></head><body><iframe width=\"\(SlumberVideo.frame.width)\" height=\"\(SlumberVideo.frame.height)\" src=\"\(ytURL)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe></body></html>", baseURL: nil)
        SlumberVideo.scrollView.isScrollEnabled = false
        SlumberVideo.scrollView.bounces = false
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillDisappear(_ animated: Bool) {
        SlumberVideo.reload()
        super.viewWillDisappear(animated)
    }
    
    
    
}
