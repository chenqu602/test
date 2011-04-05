//
//  PainterView.h
//  ipadkids
//
//  Created by User on 11-1-24.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Squiggle.h"

@interface PainterView : UIView 
{
	//正在绘的曲线
	NSMutableDictionary *squigglesDic;
	//已经完成的曲线
	NSMutableArray *finishSquiggles;
	UIColor *color;
	float lineWidth;
    
  //  CALayer  *layer;   
}
@property (nonatomic, retain) UIColor *color;
//@property(nonatomic,readonly,retain) CALayer  *layer;   
@property float lineWidth;


-(void) drawSquiggle:(Squiggle *)squiggle inContext:(CGContextRef)context;

-(void) resetView;
-(void) erase;
-(void) setColor:(UIColor *)color;
-(void) setBackgroundColor:(UIColor *)color;

-(void) captureAndSavedToPhotosAlbum;

-(void) clearLastLine;

//warning
//-(void)renderInContext:(CGContextRef)context;

@end