//
//  ViewController.swift
//  FullScreenBrowser
//
//  Created by fukuoka on 2015/04/22.
//  Copyright (c) 2015年 akirafukuoka. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    
    @IBOutlet weak var webview: WebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        var url:String = "http://www.ficc.jp/"
        self.webview.mainFrame.loadRequest(NSURLRequest(URL: NSURL(string: url)!))
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
}

