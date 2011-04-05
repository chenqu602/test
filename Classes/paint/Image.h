//
//  Image.h
//  PaintDemo
//
//  Created by admin on 11-2-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Image : NSObject 

	{
		NSMutableArray *imagesArray;
		UIImage *strokeImage;
		float lineWidth;
	}
	@property (nonatomic, retain) NSMutableArray *pointsArray;
	@property (retain) UIColor *strokeColor;
	@property float lineWidth;
	
	-(void)addPoint:(CGPoint)point;

@end
