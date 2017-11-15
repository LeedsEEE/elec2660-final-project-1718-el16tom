//
//  SecondViewController.h
//  Final project
//
//  Created by Tom Maynard [el16tom] on 07/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FullTimeViewController : UIViewController
//outlets
@property (weak, nonatomic) IBOutlet UILabel *Company_name;
@property (weak, nonatomic) IBOutlet UILabel *Type_of_job;
@property (weak, nonatomic) IBOutlet UILabel *Pay;
@property (weak, nonatomic) IBOutlet UILabel *Weekly_hours;
@property (weak, nonatomic) IBOutlet UILabel *Description;

@end

