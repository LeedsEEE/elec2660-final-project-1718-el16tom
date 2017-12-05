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
    self.Rating.delegate=self;
    self.Rating.dataSource=self;
    
    //connecting the storyboard
    self.Company_name_label.text= self.job.Company_name;
    self.Type_of_job_label.text= self.job.Type;
    self.Pay_label.text= self.job.pay;
    self.Weekly_hours_label.text = self.job.hours;
    self.Description_label.text= self.job.Description;
    self.Logo.image= self.job.Image_1;
    NSLog(@"storyboard elements connected to array");
   
    
    
    NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
     self.saved_value =[defaults integerForKey:@"Saved_value"];
        self.ratings_label.text= [NSString stringWithFormat:@"You have rated this job: %ld",self.saved_value];
    
    //https://stackoverflow.com/questions/11777072/how-to-set-a-default-value-of-a-uipickerview
    //setting the initial value to be 5 in the pickeview row
    [self.Rating selectRow:5 inComponent:0 animated:YES];
 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma pickerView 1 delegates
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    NSString *coordinate = [NSString stringWithFormat:@"%ld",row];
    return coordinate;
}
- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
    self.rating_value = [self.Rating selectedRowInComponent:0];
    
    
  
    NSLog(@"row selected in the picker view= %ld",self.rating_value);
    


    
    self.ratings_label.text= [NSString stringWithFormat:@"You have rated this job: %ld",self.rating_value];
    
    
}

#pragma pickerView 1 datasources
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 11;
}





- (IBAction)save_rating:(UIButton *)sender {
    NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.rating_value forKey:@"Saved_value"];
    [defaults synchronize];
    
}
@end
