//
//  PaintDemoAppDelegate.h
//  PaintDemo
//
//  Created by admin on 11-2-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PaintDemoViewController;

@interface PaintDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PaintDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PaintDemoViewController *viewController;

@end

