//
//  Chapter7Controller.swift
//  Top Risk Prototype
//
//  Created by Zhao Shi on 2016/10/25.
//  Copyright © 2016年 SkylerLecroy. All rights reserved.
//

import UIKit

class Chapter7Controller: UIViewController{
    
    @IBOutlet var Chapter7Video: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let youtbelink7 = "https://www.youtube.com/embed/Oi2dWM9tgSs"
        Chapter7Video.allowsInlineMediaPlayback = true;
        Chapter7Video.loadHTMLString("<iframe width=\"\(Chapter7Video.frame.width)\" height=\"\(Chapter7Video.frame.height)\" src=\"\(youtbelink7)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>",baseURL: nil);
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Chapter7Video.reload()
        super.viewWillDisappear(animated)
    }
}
