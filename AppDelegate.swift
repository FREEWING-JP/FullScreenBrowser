//
//  AppDelegate.swift
//  FullScreenBrowser
//
//  Created by fukuoka on 2015/04/22.
//  Copyright (c) 2015年 akirafukuoka. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    
    @IBOutlet weak var menubar: NSMenu!
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // メニューバーを隠す
        NSMenu.setMenuBarVisible(false)
    }
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
}