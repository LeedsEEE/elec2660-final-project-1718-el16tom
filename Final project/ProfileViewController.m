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
    

 
}
//the keyboard disappears when background is pressed
- (IBAction)Background_pressed:(id)sender {
    
    if ([self.Name_textfiled isFirstResponder]) {
        [self.Name_textfiled resignFirstResponder];
    }
    if ([self.Gender_textfield isFirstResponder]) {
        [self.Gender_textfield resignFirstResponder];
        
        
        if ([self.availability_textfiled isFirstResponder]) {
            [self.availability_textfiled resignFirstResponder];
        }
    
    
    }
}



//the keyboard will disappear if return is clicked

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    [textField resignFirstResponder];

    return YES;

};







@end
