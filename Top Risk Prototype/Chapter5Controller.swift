//
//  Chapter5Controller.swift
//  Top Risk Prototype
//
//  Created by SudhishnaSendhilvelan on 10/26/16.
//  Copyright © 2016 SkylerLecroy. All rights reserved.
//

import UIKit

class Chapter5Controller: UIViewController{
    
    @IBOutlet weak var Chapter5Video: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let youtbelink5 = "https://www.youtube.com/embed/fbodZlYAePI"
        Chapter5Video.allowsInlineMediaPlayback = true;
        Chapter5Video.loadHTMLString("<html><head><title>.</title><style>body,html,iframe{margin:0;padding:0;}</style></head><body><iframe width=\"\(Chapter5Video.frame.width)\" height=\"\(Chapter5Video.frame.height)\" src=\"\(youtbelink5)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe></body></html>", baseURL: nil);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Chapter5Video.reload()
        super.viewWillDisappear(animated)
        
    }}
