//
//  CustomNavigationBarController.m
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/22.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//

#import "CustomNavBarController.h"
#import "UINavigationBar+CustomImage.h"

@interface CustomNavBarController ()

@end

@implementation CustomNavBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)loadView {
    [super loadView];
    
    UIBarButtonItem *closeItem = [[UIBarButtonItem alloc] initWithTitle:@"Close" style:UIBarButtonItemStyleBordered handler:^(id sender) {
        [self dismissModalViewControllerAnimated:YES];
    }];
    self.navigationItem.rightBarButtonItem = closeItem;
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
