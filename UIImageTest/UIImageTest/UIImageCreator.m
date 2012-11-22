//
//  UIImageCreator.m
//  UIImageTest
//
//  Created by 慶之 田中 on 12/11/23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "UIImageCreator.h"

@implementation UIImageCreator

+(UIImage *)createUIImage
{
  const int height = 100;
  const int width = 100;
  CGContextRef context = NULL;
  
  CGColorSpaceRef imageColorSpace = CGColorSpaceCreateDeviceRGB();
  
  context = CGBitmapContextCreate (NULL, width, height, 8, width * 4,
                                   imageColorSpace, kCGImageAlphaPremultipliedLast);
  
  CGContextSetRGBFillColor (context, 1.0, 0.8, 0.8, 1);
  CGContextFillRect (context, CGRectMake (0, 0, width, height ));
    
  CGImageRef image = CGBitmapContextCreateImage(context);
  UIImage *returnImage = [[[UIImage alloc] initWithCGImage:image] autorelease];
 
  CGColorSpaceRelease(imageColorSpace);
  CGContextRelease(context);
  CGImageRelease(image);
  
  return returnImage;
}
@end
