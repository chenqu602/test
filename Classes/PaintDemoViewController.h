//
//  PaintDemoViewController.h
//  PaintDemo
//
//  Created by admin on 11-2-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PainterView.h";


@interface PaintDemoViewController : UIViewController {
	PainterView *painterView;
}
@property (nonatomic,retain) PainterView *painterView;
-(IBAction)undoButtonOnClick:(id)sender;

@end

