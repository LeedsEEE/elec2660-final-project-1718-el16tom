//
//  Job_class.h
//  Final project
//
//  Created by Tom Maynard [el16tom] on 14/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Job : UIViewController

//setting the properties of the job

@property (nonatomic, strong) NSString *Company_name;
@property (nonatomic, strong) NSString *Description;
@property (nonatomic, strong) NSString *pay;
@property (nonatomic, strong) NSString *hours;
@property (nonatomic, strong) NSString *Type;
@property UIImage *Image_1;
@property UIImage *Image_2;
@end
