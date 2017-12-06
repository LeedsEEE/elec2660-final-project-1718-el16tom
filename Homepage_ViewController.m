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
    
    
    [self performSegueWithIdentifier:@"Show" sender:self];//show is the segue for the page change
    //https://stackoverflow.com/questions/34655473/how-to-open-new-view-controller-after-click-button ,28/11/17
    NSLog(@"New page requested");
}


- (IBAction)info_button:(UIButton *)sender {
//this action will create a seperate viewcontroller as an alert
    UIAlertController *info_controller = [UIAlertController alertControllerWithTitle: @"About the app"
                                          message:@"Welcome to the find my job leeds app!\n It is the only app you'll ever need to help find you your dream job. Just enter your profile and begin looking through either full time or part time jobs and once you have found one that suits you just click the email button and respond to the jpb immediately. You are also able to rate each individual job so you can come back to it later."
                                          preferredStyle:UIAlertControllerStyleAlert];
    [info_controller addAction:[UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDefault handler:nil]];//adding an action which removes the controller
    [self presentViewController:info_controller animated:YES completion:nil];//animated so that it comes up when requested
    NSLog(@"Info viewcontroller called");


}
@end
