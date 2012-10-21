//
//  RootViewController.m
//  LocalHTMLApp
//
//  Created by Haifa Carina Baluyos on 10/21/12.
//  Copyright (c) 2012 Haifa Carina Baluyos. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

- (void) loadView {
    [super loadView];
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
	webView.autoresizesSubviews = YES;
	webView.autoresizingMask=(UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    webView.dataDetectorTypes = UIDataDetectorTypeLink;
    webView.backgroundColor = [UIColor redColor];
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"www"]];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
    
    //add the web view to the content view
	[self.view addSubview:webView];

    [webView release];
}

@end
