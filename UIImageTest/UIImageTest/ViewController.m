//
//  ViewController.m
//  UIImageTest
//
//  Created by 慶之 田中 on 12/11/23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "UIImageCreator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  UIImage *image = [UIImageCreator createUIImage];
  UIImageView *imageView = [[UIImageView alloc]  initWithImage:image];
  [self.view addSubview:imageView];
  NSLog(@"scale =%f",[UIScreen mainScreen].scale);
  
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
