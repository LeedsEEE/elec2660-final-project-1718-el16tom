//
//  SecondViewController.h
//  Final project
//
//  Created by Tom Maynard [el16tom] on 07/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Job.h"
#import "FullTime_info.h"

@interface FullTimeViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
//outlets
@property (weak, nonatomic) IBOutlet UILabel *Company_name_label;
@property (weak, nonatomic) IBOutlet UILabel *Type_of_job_label;
@property (weak, nonatomic) IBOutlet UILabel *Pay_label;
@property (weak, nonatomic) IBOutlet UILabel *Weekly_hours_label;
@property (weak, nonatomic) IBOutlet UILabel *Description_label;
@property (weak, nonatomic) IBOutlet UIImageView *Logo;

@property (strong, nonatomic) Job *job;

@property (weak, nonatomic) IBOutlet UIPickerView *Rating;
@property (weak, nonatomic) IBOutlet UILabel *ratings_label;

@end

