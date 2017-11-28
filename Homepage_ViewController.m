//
//  Homepage_ViewController.m
//  Final project
//
//  Created by Tom Maynard [el16tom] on 28/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import "Homepage_ViewController.h"

@interface Homepage_ViewController ()

@end

@implementation Homepage_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)Enter_pressed:(UIButton *)sender {
    
    
    [self performSegueWithIdentifier:@"Show" sender:self];
    //https://stackoverflow.com/questions/34655473/how-to-open-new-view-controller-after-click-button ,28/11/17
    NSLog(@"New page requested");
}
@end
