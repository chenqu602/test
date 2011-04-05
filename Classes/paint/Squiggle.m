//
//  Squiggle.m
//  ipadkids
//
//  Created by User on 11-1-24.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "Squiggle.h"


@implementation Squiggle
@synthesize pointsArray;
@synthesize strokeColor;
@synthesize lineWidth;

-(id) init
{
	if(self = [super init])
	{
		pointsArray = [[NSMutableArray alloc] init];
		strokeColor = [[UIColor blackColor] retain];
	}
	
	return self;
}


-(void) addPoint:(CGPoint)point 
{
	//这里得用NSValue将结构体类型的CGPoint转换为对象
	NSValue *value = [NSValue valueWithBytes:&point objCType:@encode(CGPoint)];
	[pointsArray addObject:value];
	
}

-(void) dealloc
{
	[super dealloc];
	[strokeColor release];
	[pointsArray release];
}


@end
