//
//  Part_time_TableViewController.h
//  Final project
//
//  Created by Tom Maynard [el16tom] on 14/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Job.h"
#import "FullTime_info.h"
#import "Part_time_ViewController.h"

@interface Part_time_TableViewController : UITableViewController

@property (strong, nonatomic) FullTime_info *job_info;

@end
