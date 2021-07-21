//
//  MDAppDelegate.m
//  Google Translate
//
//  Created by liman on 11/11/2015.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import "AppDelegate.h"
#import <WebKit/WebKit.h>

@implementation MDAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://translate.google.com/"]];
	[self.webView.mainFrame loadRequest:request];
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication hasVisibleWindows:(BOOL)flag {
    if (!flag) {
        id window;
        for(window in theApplication.windows) {
            NSWindow *w = window;
            [w makeKeyAndOrderFront:self];
        }
    }
    return YES;
}

@end
