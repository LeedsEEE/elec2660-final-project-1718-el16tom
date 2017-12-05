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
        PSR_solutions.Description=@"Need to be ready to start within 2 weeks and finish all the forms.";
        PSR_solutions.Type=@"Refurbishing offices";
        PSR_solutions.Image_1= [UIImage imageNamed: @"PSR.png"];
    
        Job *Venatu = [[Job alloc]init];
        Venatu.Company_name= @"Venatu Consulting";
        Venatu.pay= @"£9.00 per hour";
        Venatu.hours= @"40 hours a week minimum";
        Venatu.Description=@"Heavy lifting involved";
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
        Appleton_Academy.Description=@"Working in a small team";
        Appleton_Academy.Type=@"IT support";
        Appleton_Academy.Image_1= [UIImage imageNamed: @"appleton_3.png"];
        
        
        Job *NRS  = [[Job alloc]init];
        NRS.Company_name= @"Nationwide Retail Systems Ltd ";
        NRS.pay= @"£17,000 per year";
        NRS.hours= @"Flexible week/weekend work";
        NRS.Description=@"requires secondary education";
        NRS.Type=@"IT help desk";
        NRS.Image_1= [UIImage imageNamed: @"NRS_2.jpeg"];
        
        Job *Christeyns  = [[Job alloc]init];
        Christeyns.Company_name= @"Christeyns ";
        Christeyns.pay= @"Competitive salary";
        Christeyns.hours= @"4 full days a week";
        Christeyns.Description=@"Requires work experience in sector";
        Christeyns.Type=@"IT support";
        Christeyns.Image_1= [UIImage imageNamed: @"christeyns_2.png"];
        
        
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
        Ecco_Pizzeria.Image_1= [UIImage imageNamed: @"EP_2.png"];
        
        
        Job *P_L = [[Job alloc]init];
        P_L.Company_name= @"Pizza labella";
        P_L.pay= @"£18,000 a year";
        P_L.hours= @"6 evenings a week";
        P_L.Description=@"Not cash in hand";
        P_L.Type=@"Grill chef";
        P_L.Image_1= [UIImage imageNamed: @"labella_2.jpg"];
        
        
        Job *EMC = [[Job alloc]init];
        EMC.Company_name= @"Everyman Cinema";
        EMC.pay= @"£15,000 a year";
        EMC.hours= @"5 shifts a week";
        EMC.Description=@"No experience required";
        EMC.Type=@"Plating dishes";
        EMC.Image_1= [UIImage imageNamed: @"Everyman-Cinema-Leeds_2.jpg"];
        
        
        
        
        
        
        
        //adding third array
        [self.Chef addObject:Ecco_Pizzeria];
        [self.Chef addObject:P_L];
        [self.Chef addObject:EMC];
        
        
        //second tableview first array
        
        
        
        self.hospitality = [NSMutableArray array];
        Job *Greggs = [[Job alloc]init];
        Greggs.Company_name= @"Greggs";
        Greggs.pay= @"Upto £22,000 a year";
        Greggs.hours= @"Early morning shifts";
        Greggs.Description=@"Employee benefits available if you meet the required targets.";
        Greggs.Type=@"Store manager";
        Greggs.Image_2= [UIImage imageNamed: @"greggs_2.png"];
        
        Job *NHS = [[Job alloc]init];
        NHS.Company_name= @"NHS";
        NHS.pay= @"£20,000 a year";
        NHS.hours= @"3 days a week";
        NHS.Description=@"Must provide 3 years of work refernece";
        NHS.Type=@"Barista";
        NHS.Image_2= [UIImage imageNamed: @"NHS.png"];
        
        
        Job *Atlas = [[Job alloc]init];
        Atlas.Company_name= @"AtlasCorp";
        Atlas.pay= @"£18,000-£24,000 a year";
        Atlas.hours= @"Flexible hours";
        Atlas.Description=@"Bonus package available";
        Atlas.Type=@"Trainee events manager";
        Atlas.Image_2= [UIImage imageNamed: @"AC.png"];
        
        
        
        [self.hospitality addObject:Greggs];
        [self.hospitality addObject:NHS];
        [self.hospitality addObject:Atlas];
    
        
        //second tableview second array
        
        self.receptionist = [NSMutableArray array];
        Job *Derwent = [[Job alloc]init];
        Derwent.Company_name= @"Derwent";
        Derwent.pay= @"£19,000 a year";
        Derwent.hours= @"Mon,Tues & Thurs 9-5";
        Derwent.Description=@"Wide range of tasks";
        Derwent.Type=@"Help desk operator";
        Derwent.Image_2= [UIImage imageNamed: @"Derwent.png"];
        
        [self.receptionist addObject:Derwent];
        
        
        
        
        
        
        //second tableview third array
        
        self.gardening = [NSMutableArray array];
        Job *GD = [[Job alloc]init];
        GD.Company_name= @"Argyll and Bute Council";
        GD.pay= @"Competitive salary";
        GD.hours= @"9-5, Wednes-Sun";
        GD.Description=@"Maintaining the graveyard";
        GD.Type=@"Grave digger";
        GD.Image_2= [UIImage imageNamed: @"GD.jpeg"];
        
         [self.gardening addObject:GD];
        
        
        //fulltime pickerview array
        
        self.ratings_array =[NSMutableArray array];
        
        
        
    }
    return self;
}
@end
