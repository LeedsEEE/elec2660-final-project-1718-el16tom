//
//  SecondViewController.m
//  Final project
//
//  Created by Tom Maynard [el16tom] on 07/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import "FullTimeViewController.h"

@interface FullTimeViewController ()

@end

@implementation FullTimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //connecting the storyboard
    self.Company_name_label.text= self.job.Company_name;
    self.Type_of_job_label.text= self.job.Type;
    self.Pay_label.text= self.job.pay;
    self.Weekly_hours_label.text = self.job.hours;
    self.Description_label.text= self.job.Description;
    self.Logo.image= self.job.Image_1;
    NSLog(@"storyboard elements connected to array");
 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
