//
//  WindowController.swift
//  FullScreenBrowser
//
//  Created by fukuoka on 2015/04/15.
//  Copyright (c) 2015年 akirafukuoka. All rights reserved.
//

import Cocoa
import AppKit

class WindowController: NSWindowController {
    
    var timer:NSTimer!
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        let mainRect:NSRect = self.window!.screen!.frame
        // 全画面にリサイズ
        self.window!.setFrame(mainRect, display: true, animate: true)
        self.window!.makeKeyAndOrderFront(self)
        // スクリーンセイバーと同階層に
        self.window!.level = kCGScreenSaverWindowLevelKey
        // カーソルを隠すタイマー処理
        self.timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "onUpdate:", userInfo: nil, repeats: true)
    }
    func onUpdate(_timer:NSTimer) {
        NSCursor.hide()
    }
    override func mouseMoved(event: NSEvent) {
        NSCursor.unhide()
    }
    
    
}