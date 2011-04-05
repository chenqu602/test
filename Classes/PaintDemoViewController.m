//
//  PaintDemoViewController.m
//  PaintDemo
//
//  Created by admin on 11-2-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PaintDemoViewController.h"

@implementation PaintDemoViewController
@synthesize painterView;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	painterView = [[PainterView alloc] initWithFrame:CGRectMake(0, 0, 800, 600)];

	UIImage *bgImage=[UIImage imageNamed:@"background.png"];
	UIColor *bgColor=[[UIColor alloc] initWithPatternImage:bgImage];
	[painterView setBackgroundColor:bgColor];
	[painterView setLineWidth:20];
	[bgColor release];
	
	UIImage *paintImage=[UIImage imageNamed:@"sunny.png"];
	UIColor *paintColor = [[UIColor alloc] initWithPatternImage:paintImage];
	[painterView setColor:paintColor];
    [self.view addSubview:painterView];
	
	
    [super viewDidLoad];
}



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

-(IBAction)undoButtonOnClick:(id)sender{
    [painterView clearLastLine];
}

- (void)dealloc {
    [super dealloc];
}

@end
