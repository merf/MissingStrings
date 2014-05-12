//
//  AppDelegate.h
//  Test
//
//  Created by Neil Wallace on 04/02/2014.
//  Copyright (c) 2014 Neil Wallace. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifdef ANDROID
#import "KamcordBridge.h"
#endif

@class ViewController;
@class DFVideoAdDelegate;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) DFVideoAdDelegate *videoAdDelegate;

#ifdef ANDROID
@property (strong, nonatomic) KamcordBridge *kamcordBridge;
#endif

@end
