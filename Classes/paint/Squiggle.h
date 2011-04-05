//
//  Squiggle.h
//  ipadkids
//
//  Created by User on 11-1-24.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Squiggle : NSObject 
{
    NSMutableArray *pointsArray;
	UIColor *strokeColor;
	float lineWidth;
}
@property (nonatomic, retain) NSMutableArray *pointsArray;
@property (retain) UIColor *strokeColor;
@property float lineWidth;

-(void)addPoint:(CGPoint)point;

@end
