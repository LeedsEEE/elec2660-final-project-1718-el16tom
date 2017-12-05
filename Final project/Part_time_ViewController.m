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
    self.Rating_2.delegate=self;
    self.Rating_2.dataSource=self;
     [self.Rating_2 selectRow:5 inComponent:0 animated:YES];
    
    self.name_label.text= self.job.Company_name;
    self.Type_label.text= self.job.Type;
    self.Pay_label.text= self.job.pay;
    self.Hours_label.text = self.job.hours;
    self.Description_label.text= self.job.Description;
    self.Image_2.image= self.job.Image_2;

    
    NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
    self.saved_value_2 =[defaults integerForKey:@"Saved_value"];
    self.rating_reciever.text= [NSString stringWithFormat:@"You have rated this job: %ld",self.saved_value_2];
    
    
    
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

#pragma pickerView 2 delegates
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    NSString *coordinate = [NSString stringWithFormat:@"%ld",row];
    return coordinate;
}
- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
    NSLog(@"Gets this far");
    self.rating_value_2 = [self.Rating_2 selectedRowInComponent:0];
    
    NSLog(@"row selected in the picker view= %ld",self.rating_value_2);
    
    self.rating_reciever.text= [NSString stringWithFormat:@"You have rated this job: %ld",self.rating_value_2];
    
}

#pragma pickerView 2 datasources
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 11;
}




- (IBAction)save_rating:(UIButton *)sender {
    NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.rating_value_2 forKey:@"Saved_value_2"];
    [defaults synchronize];
}
@end
