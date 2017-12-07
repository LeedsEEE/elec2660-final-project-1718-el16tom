//
//  FirstViewController.m
//  Final project
//
//  Created by Tom Maynard [el16tom] on 07/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
 // https://stackoverflow.com/questions/30034951/how-do-i-add-a-date-of-birth-uidatepicker-to-uitextfield
    
   self.availability_textfiled.delegate = self;
   
    //initialising the datepicker
    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
    [datePicker setDate:[NSDate date]];
    datePicker.datePickerMode = UIDatePickerModeDate;//setting the mode of the date picker
    [datePicker addTarget:self action:@selector(dateTextField:) forControlEvents:UIControlEventValueChanged];
    [self.availability_textfiled setInputView:datePicker];//setting the input of the textfield to be the datepicker

   //https://stackoverflow.com/questions/9499894/how-to-read-string-from-nsuserdefaults
    //setting the profile to be the same as the last time
   
    self.Name_label_reciever.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"Name"];
    self.Gender_label_reciever.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"gender"];
    self.availability_label.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"availability"];//each textfield needs an individual key so that each bit of info is saved seperately
   

    
  
}


  




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




//sends texfiled info to the labels
- (IBAction)Button_pressed:(UIButton *)sender {
    
    self.Name_label_reciever.text= self.Name_textfiled.text;
    self.Gender_label_reciever.text= self.Gender_textfield.text;
    self.availability_label.text= self.availability_textfiled.text;
    
    
    //adding an object to be saved
    [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%@",self.Name_label_reciever.text] forKey:@"Name"];//creating the saved objects
     [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%@",self.Gender_label_reciever.text] forKey:@"gender"];
   [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%@",self.availability_label.text] forKey:@"availability"];
    //the info inputted here was meant to be saved to the app so that it could be used on another tab, this would require using Coredata which I haven't worked out how to use
    //so can't implement it

 
}





//the keyboard disappears when background is pressed
- (IBAction)Background_pressed:(id)sender {
    
    if ([self.Name_textfiled isFirstResponder]) {
        [self.Name_textfiled resignFirstResponder];
        NSLog(@"background pressed");
    }
   if ([self.Gender_textfield isFirstResponder]) {
        [self.Gender_textfield resignFirstResponder];
           NSLog(@"background pressed");
   }
    

       if ([self.availability_textfiled isFirstResponder]) {
           [self.availability_textfiled resignFirstResponder];
          NSLog(@"background pressed");
       }
    
}



//the keyboard will disappear if return is clicked

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    [textField resignFirstResponder];
       NSLog(@"return button pressed");

    return YES;
#pragma datepicker delegates
};
 // https://stackoverflow.com/questions/30034951/how-do-i-add-a-date-of-birth-uidatepicker-to-uitextfield
-(void) dateTextField:(id)sender{
    UIDatePicker *datePicker = (UIDatePicker*)self.availability_textfiled.inputView; //sets the availability keyboard to be a date picker
    [datePicker setMaximumDate:nil];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    NSDate *eventDate = datePicker.date;
    [dateFormat setDateFormat:@"dd/MM/yyyy"];//setting the format of the date picker
    NSString *dateString = [dateFormat stringFromDate:eventDate];
    self.availability_textfiled.text = [NSString stringWithFormat:@"%@",dateString];//setting the input text in the textfield to be formatted like the datepicker
}





@end
