//
//  Chapter8Controller.swift
//  Top Risk Prototype
//
//  Created by Zhao Shi on 2016/10/28.
//  Copyright © 2016年 SkylerLecroy. All rights reserved.
//

import UIKit

class Chapter8Controller: UIViewController{
    
    @IBOutlet var Chapter8Video: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let youtbelink8 = "https://www.youtube.com/embed/gW9eMMNj3f0"
        Chapter8Video.allowsInlineMediaPlayback = true;
        Chapter8Video.loadHTMLString("<iframe width=\"\(Chapter8Video.frame.width)\" height=\"\(Chapter8Video.frame.height)\" src=\"\(youtbelink8)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil);
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Chapter8Video.reload()
        super.viewWillDisappear(animated)
    }
}
