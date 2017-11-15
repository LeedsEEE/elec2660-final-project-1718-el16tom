//
//  Job_info.m
//  Final project
//
//  Created by Tom Maynard [el16tom] on 14/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import "FullTime_info.h"

@implementation FullTime_info
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.Manual_labour = [NSMutableArray array];
        Job *PSR_solutions = [[Job alloc]init];
        PSR_solutions.Company_name= @"PSR Solutions";
        PSR_solutions.pay= @"£9.50 per hour";
        PSR_solutions.hours= @"45 hours a week";
        PSR_solutions.Description=@"Applicant will need to be ready to start within 2 weeks";
        PSR_solutions.Type=@"Refurbishing offices";
        
    
        Job *Venatu = [[Job alloc]init];
        Venatu.Company_name= @"Venatu Consulting";
        Venatu.pay= @"£9.00 per hour";
        Venatu.hours= @"40 hours a week minimum";
        Venatu.Description=@"A lot of heavy lifting involved so must be physically fit";
        Venatu.Type=@"Housing development";
        
        
        Job *Skills_resource = [[Job alloc]init];
        Skills_resource.Company_name= @"Skills Resource";
        Skills_resource.pay= @"From £7.50 to £8.40 per hour";
        Skills_resource.hours= @"37 hours a week minimum";
        Skills_resource.Description=@"Help making bespoke furniture";
        Skills_resource.Type=@"Crafting";
        
        
        
        
        
        //adding the objects into the array
        [self.Manual_labour addObject:PSR_solutions];
        [self.Manual_labour addObject:Venatu];
        [self.Manual_labour addObject:Skills_resource];
        
        
    
    }
    return self;
}
@end
