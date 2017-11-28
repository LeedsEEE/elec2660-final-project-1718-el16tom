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
   
    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
    [datePicker setDate:[NSDate date]];
    datePicker.datePickerMode = UIDatePickerModeDate;
    [datePicker addTarget:self action:@selector(dateTextField:) forControlEvents:UIControlEventValueChanged];
    [self.availability_textfiled setInputView:datePicker];
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
    
    //the info inputted here was meant to be saved to the app so that it could be used on another tab, this would require using Coredata which I haven't worked out how to use
    //so can't implement it

 
}





//the keyboard disappears when background is pressed
- (IBAction)Background_pressed:(id)sender {
    
    if ([self.Name_textfiled isFirstResponder]) {
        [self.Name_textfiled resignFirstResponder];
    }
   if ([self.Gender_textfield isFirstResponder]) {
        [self.Gender_textfield resignFirstResponder];
        
   }
    

       if ([self.availability_textfiled isFirstResponder]) {
           [self.availability_textfiled resignFirstResponder];
       }
    
}



//the keyboard will disappear if return is clicked

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    [textField resignFirstResponder];

    return YES;

};
 // https://stackoverflow.com/questions/30034951/how-do-i-add-a-date-of-birth-uidatepicker-to-uitextfield
-(void) dateTextField:(id)sender{
    UIDatePicker *datePicker = (UIDatePicker*)self.availability_textfiled.inputView;
    [datePicker setMaximumDate:[NSDate date]];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    NSDate *eventDate = datePicker.date;
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:eventDate];
    self.availability_textfiled.text = [NSString stringWithFormat:@"%@",dateString];
}





@end
