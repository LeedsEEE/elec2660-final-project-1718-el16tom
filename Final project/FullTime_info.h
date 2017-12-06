//
//  Job_info.h
//  Final project
//
//  Created by Tom Maynard [el16tom] on 14/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Job.h"

@interface FullTime_info : NSObject
//creating the arrays for the full time table view
@property (strong, nonatomic) NSMutableArray *Manual_labour;//this will be the first array
@property (strong, nonatomic) NSMutableArray *Tech;
@property (strong, nonatomic) NSMutableArray *Chef;



//creating arrays for the part time table view
@property (strong, nonatomic) NSMutableArray *hospitality;
@property (strong, nonatomic) NSMutableArray *receptionist;
@property (strong, nonatomic) NSMutableArray *gardening;





@end
