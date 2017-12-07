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
   
    //initialising email
    self.email = [[MFMailComposeViewController alloc]init];
    self.email.mailComposeDelegate=self;
    
    //calling saved data
    NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
    NSString *key = [NSString stringWithFormat:@"saved_value_%@",self.job.Company_name];
    self.saved_value =[defaults integerForKey:key];
    self.ratings_label.text= [NSString stringWithFormat:@"You have rated this job: %ld",self.saved_value];
    
 
    //setting the initial value to be the same as the saved value from last time in the pickeview row
    [self.Rating selectRow:self.saved_value inComponent:0 animated:YES];
 
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
    


    
    self.ratings_label.text= [NSString stringWithFormat:@"You have rated this job: %ld",self.rating_value]; //making the ratings label to output the value recieved from the pickerview
    
    
}

#pragma pickerView 1 datasources
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 11;
}





- (IBAction)save_rating:(UIButton *)sender {
    
    //saving data
    NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
    NSString *key = [NSString stringWithFormat:@"saved_value_%@",self.job.Company_name];
    [defaults setInteger:self.rating_value forKey:key];
    [defaults synchronize];
    
}
//https://www.youtube.com/watch?v=00rKDulqEto used to help with emails

//constructing email viewcontroller
- (IBAction)email_company:(UIButton *)sender {
    
    //checking the user has an email setup to send from
    MFMailComposeViewController *email = [[MFMailComposeViewController alloc]init];
    if (![MFMailComposeViewController canSendMail]) {
        NSLog(@"Mail services are not available.");
        return;
    }
#pragma email delegate
    email.mailComposeDelegate=self;
    
    //adding subject to the email
    [email setSubject:@"Applying for advertised job"];
  
 //display email
    [self presentViewController:email animated:YES completion:nil];
    NSLog(@"email seleceted");
}
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    [self dismissViewControllerAnimated:YES completion:nil];//if the cancel button is pressed then the screen will disappear
    
}


@end
