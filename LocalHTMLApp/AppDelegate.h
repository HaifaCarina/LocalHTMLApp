//
//  AppDelegate.h
//  LocalHTMLApp
//
//  Created by Haifa Carina Baluyos on 10/21/12.
//  Copyright (c) 2012 Haifa Carina Baluyos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    RootViewController *viewController;
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) RootViewController *viewController;
@end
