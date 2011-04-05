//
//  Image.m
//  PaintDemo
//
//  Created by admin on 11-2-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Image.h"


@implementation Image
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
