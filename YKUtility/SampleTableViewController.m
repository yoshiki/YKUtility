//
//  SampleTableViewController.m
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/22.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//

#import "SampleTableViewController.h"
#import "CustomNavBarController.h"
#import "CustomNavController.h"
#import "CustomBackBarButtonController.h"
#import "CustomBackBarButton2Controller.h"
#import "SelectionActionSheetController.h"
#import "RoundedCornerNavBarController.h"
#import "RoundedCornerNavController.h"
#import "TableHandlingController.h"

@interface SampleTableViewController ()

@property (strong, nonatomic) NSArray *samples;

@end

@implementation SampleTableViewController

@synthesize samples = _samples;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.title = @"Sample";
        self.samples = [NSArray arrayWithObjects:
                        @"CustomNavBar",
                        @"CustomBackBarButton",
                        @"CustomBackBarButton2",
                        @"SelectionActionSheet",
                        @"RoundedCornerNavBar",
                        @"TableHandling",
                        nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dispatchAtIndexPath:(NSIndexPath *)indexPath {
    NSString *name = [self.samples objectAtIndex:indexPath.row];
    if ([name isEqualToString:@"CustomNavBar"]) {
        CustomNavBarController *c = [[CustomNavBarController alloc] init];
        CustomNavController *nav = [[CustomNavController alloc] initWithRootViewController:c];
        [self presentModalViewController:nav animated:YES];
    } else if ([name isEqualToString:@"CustomBackBarButton"]) {
        self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back_arrow"] style:UIBarButtonItemStyleBordered target:nil action:nil];
        CustomBackBarButtonController *c = [[CustomBackBarButtonController alloc] init];
        [self.navigationController pushViewController:c animated:YES];
    } else if ([name isEqualToString:@"CustomBackBarButton2"]) {
        CustomBackBarButton2Controller *c = [[CustomBackBarButton2Controller alloc] init];
        [self.navigationController pushViewController:c animated:YES];
    } else if ([name isEqualToString:@"SelectionActionSheet"]) {
        SelectionActionSheetController *c = [[SelectionActionSheetController alloc] init];
        [self.navigationController pushViewController:c animated:YES];
    } else if ([name isEqualToString:@"RoundedCornerNavBar"]) {
        RoundedCornerNavBarController *c = [[RoundedCornerNavBarController alloc] init];
        RoundedCornerNavController *nav = [[RoundedCornerNavController alloc] initWithRootViewController:c];
        [self presentModalViewController:nav animated:YES];
    } else if ([name isEqualToString:@"TableHandling"]) {
        TableHandlingController *c = [[TableHandlingController alloc] init];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:c];
        [self presentModalViewController:nav animated:YES];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.samples count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [self.samples objectAtIndex:indexPath.row];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [self dispatchAtIndexPath:indexPath];
}

@end
