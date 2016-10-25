//
//  Chapter4Controller.swift
//  Top Risk Prototype
//
//  Created by user122182 on 10/25/16.
//  Copyright © 2016 user122171. All rights reserved.
//

import UIKit

class Chapter4Controller: UIViewController{


    @IBOutlet weak var Chapter4Video: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let youtbelink4 = "https://www.youtube.com/embed/sWCCYhvZHr0"
        Chapter4Video.allowsInlineMediaPlayback = true;
        Chapter4Video.loadHTMLString("<html><head><title>.</title><style>body,html,iframe{margin:0;padding:0;}</style></head><body><iframe width=\"\(Chapter4Video.frame.width)\" height=\"\(Chapter4Video.frame.height)\" src=\"\(youtbelink4)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe></body></html>", baseURL: nil);
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Chapter4Video.reload()
        super.viewWillDisappear(animated)
        
    }
}
