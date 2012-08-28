//
//  RoundedCornerNavController.m
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/28.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//

#import "RoundedCornerNavController.h"

@interface RoundedCornerNavController ()

@end

@implementation RoundedCornerNavController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [[self navigationBar] performSelector:@selector(setBackgroundImage:tintColor:) withObject:[UIImage imageNamed:@"rounded_navbar_bg"] withObject:UIColorFromRGB(0x003366)];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
