//
//  Chapter6Controller.swift
//  Top Risk Prototype
//
//  Created by SudhishnaSendhilvelan on 10/26/16.
//  Copyright © 2016 SkylerLecroy. All rights reserved.
//

import UIKit

class Chapter6Controller: UIViewController{
    @IBOutlet weak var Chapter6Video: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let youtbelink6 = "https://www.youtube.com/embed/P1K1hqJibzc"
        Chapter6Video.allowsInlineMediaPlayback = true;
        Chapter6Video.loadHTMLString("<html><head><title>.</title><style>body,html,iframe{margin:0;padding:0;}</style></head><body><iframe width=\"\(Chapter6Video.frame.width)\" height=\"\(Chapter6Video.frame.height)\" src=\"\(youtbelink6)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe></body></html>", baseURL: nil);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Chapter6Video.reload()
        super.viewWillDisappear(animated)
        
    }
}
