//
//  Part_time_ViewController.h
//  Final project
//
//  Created by Tom Maynard [el16tom] on 14/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Job.h"
#import "FullTime_info.h"

@interface Part_time_ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *name_label;
@property (weak, nonatomic) IBOutlet UILabel *Type_label;
@property (weak, nonatomic) IBOutlet UILabel *Pay_label;
@property (weak, nonatomic) IBOutlet UILabel *Hours_label;
@property (weak, nonatomic) IBOutlet UITextView *Description_label;
@property (weak, nonatomic) IBOutlet UIImageView *Image_2;
@property (weak, nonatomic) IBOutlet UIImageView *logo;
- (IBAction)save_rating:(UIButton *)sender;

@property (strong, nonatomic) Job *job;

@property (weak, nonatomic) IBOutlet UILabel *rate_label_1;

@property (weak, nonatomic) IBOutlet UILabel *rating_reciever;
@property (weak, nonatomic) IBOutlet UIPickerView *Rating_2;
@property NSInteger rating_value_2;
@property NSInteger saved_value_2;

@end
