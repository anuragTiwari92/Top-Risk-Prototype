//
//  Chapter4VideoController.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 10/22/16.
//  Copyright © 2016 AnuragTiwari. All rights reserved.
//

import UIKit

class Chapter4VideoController: UIViewController{
    
    @IBOutlet var Chapter4Video: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let youtbelink3 = "https://www.youtube.com/embed/sWCCYhvZHr0"
        
        Chapter4Video.allowsInlineMediaPlayback = true;
        Chapter4Video.loadHTMLString("<html><head><title>.</title><style>body,html,iframe{margin:0;padding:0;}</style></head><body><iframe width=\"\(Chapter4Video.frame.width)\" height=\"\(Chapter4Video.frame.height)\" src=\"\(youtbelink3)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe></body></html>", baseURL: nil);
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Chapter4Video.reload()
        super.viewWillDisappear(animated)
        
    }
}


