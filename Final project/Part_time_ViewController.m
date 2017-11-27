//
//  Part_time_ViewController.m
//  Final project
//
//  Created by Tom Maynard [el16tom] on 14/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import "Part_time_ViewController.h"

@interface Part_time_ViewController ()

@end

@implementation Part_time_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.name_label.text= self.job.Company_name;
    self.Type_label.text= self.job.Type;
    self.Pay_label.text= self.job.pay;
    self.Hours_label.text = self.job.hours;
    self.Description_label.text= self.job.Description;
    self.Image_2.image= self.job.Image_2;

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

@end
