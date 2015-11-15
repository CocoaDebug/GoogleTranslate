//
//  MDAppDelegate.h
//  Google Translate
//
//  Created by liman on 11/11/2015.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class WebView;

@interface MDAppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet WebView *webView;
@property (assign) IBOutlet NSWindow *window;

@end
