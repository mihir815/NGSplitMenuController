//
//  MasterViewController.m
//  NGSplitMenuController
//
//  Created by Nitin George on 8/22/15.
//  Copyright (c) 2015 Nitin George. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "NGSplitMenu.h"

@interface MasterViewController ()
@property (strong, nonatomic) IBOutlet UIButton *showDetailButton;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _showDetailButton.layer.cornerRadius = 5;
    _showDetailButton.layer.borderColor = [UIColor colorWithRed:0.090f green:0.349f blue:0.506f alpha:1.00f].CGColor;
    _showDetailButton.layer.borderWidth = 1.2;
    _showDetailButton.clipsToBounds = YES;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showDetailClicked:(id)sender {
    DetailViewController *detail = [[DetailViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
    [[NGSplitViewManager sharedInstance]setDetailViewController:detail];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
