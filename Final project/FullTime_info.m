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
        PSR_solutions.Description=@"need to be ready to start within 2 weeks";
        PSR_solutions.Type=@"Refurbishing offices";
        PSR_solutions.Image_1= [UIImage imageNamed: @"PSR.png"];
    
        Job *Venatu = [[Job alloc]init];
        Venatu.Company_name= @"Venatu Consulting";
        Venatu.pay= @"£9.00 per hour";
        Venatu.hours= @"40 hours a week minimum";
        Venatu.Description=@"heavy lifting involved";
        Venatu.Type=@"Housing development";
        Venatu.Image_1= [UIImage imageNamed: @"Venatu.png"];
        
        
        Job *Skills_resource = [[Job alloc]init];
        Skills_resource.Company_name= @"Skills Resource";
        Skills_resource.pay= @"From £7.50 to £8.40 per hour";
        Skills_resource.hours= @"37 hours a week minimum";
        Skills_resource.Description=@"Help making bespoke furniture";
        Skills_resource.Type=@"Crafting";
        Skills_resource.Image_1= [UIImage imageNamed: @"Skills.png"];
        
        
        
        
        //adding the objects into the array
        [self.Manual_labour addObject:PSR_solutions];
        [self.Manual_labour addObject:Venatu];
        [self.Manual_labour addObject:Skills_resource];
        
        //setting up second section
        
        self.Tech = [NSMutableArray array];
        Job *Appleton_Academy  = [[Job alloc]init];
        Appleton_Academy.Company_name= @"Appleton Academy";
        Appleton_Academy.pay= @"£20,000 per year";
        Appleton_Academy.hours= @"50 hours a week";
        Appleton_Academy.Description=@"working in a small team";
        Appleton_Academy.Type=@"IT support";
        Appleton_Academy.Image_1= [UIImage imageNamed: @"appleton.png"];
        
        
        Job *NRS  = [[Job alloc]init];
        NRS.Company_name= @"Nationwide Retail Systems Ltd ";
        NRS.pay= @"£17,000 per year";
        NRS.hours= @"flexible week/weekend work";
        NRS.Description=@"requires secondary education";
        NRS.Type=@"IT help desk";
        NRS.Image_1= [UIImage imageNamed: @"NRS.jpeg"];
        
        Job *Christeyns  = [[Job alloc]init];
        Christeyns.Company_name= @"Christeyns ";
        Christeyns.pay= @"Competitive salary";
        Christeyns.hours= @"4 full days a week";
        Christeyns.Description=@"requires work experience in sector";
        Christeyns.Type=@"IT support";
        Christeyns.Image_1= [UIImage imageNamed: @"christeyns.png"];
        
        
        //second array
        [self.Tech addObject:Appleton_Academy];
        [self.Tech addObject:NRS];
        [self.Tech addObject:Christeyns];
        
        
        //setting up third section
        
        self.Chef = [NSMutableArray array];
        Job *Ecco_Pizzeria  = [[Job alloc]init];
        Ecco_Pizzeria.Company_name= @"Ecco Pizzeria";
        Ecco_Pizzeria.pay= @"Competitive salary";
        Ecco_Pizzeria.hours= @"6 days a week";
        Ecco_Pizzeria.Description=@"2 years experience required";
        Ecco_Pizzeria.Type=@"Preparing Pizza & Pasta dishes";
        Ecco_Pizzeria.Image_1= [UIImage imageNamed: @"EP.png"];
        
        
        //adding third array
        [self.Chef addObject:Ecco_Pizzeria];
        
        
        
    
    }
    return self;
}
@end
