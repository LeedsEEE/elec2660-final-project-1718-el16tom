//
//  FirstViewController.h
//  Final project
//
//  Created by Tom Maynard [el16tom] on 07/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController<UITextFieldDelegate>


#pragma mark image references for the whole prject


/* https://www.azelerecambios.com link for profile icon image
https://www.trade-soft.co.uk/psr-solutions/ PSR consulting
 https://www.linkedin.com/company/venatu-consulting venatu image
 http://www.skillsresource.co.uk skills employment agency image
 http://www.appletonacademy.co.uk appleton academy
 
 
 
 */
@property (weak, nonatomic) IBOutlet UITextField *availability_textfiled;

@property (weak, nonatomic) IBOutlet UITextField *Name_textfiled;
@property (weak, nonatomic) IBOutlet UITextField *Gender_textfield;
@property (weak, nonatomic) IBOutlet UILabel *Name_label_reciever;
@property (weak, nonatomic) IBOutlet UILabel *Gender_label_reciever;
@property (weak, nonatomic) IBOutlet UILabel *availability_label;



- (IBAction)Button_pressed:(UIButton *)sender;
- (IBAction)Background_pressed:(id)sender;


// date picker https://www.youtube.com/watch?v=849WOypYEuw



@end

