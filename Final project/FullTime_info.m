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
        PSR_solutions.Description=@"Need to be ready to start within 2 weeks and finish all the forms.\nTo conact us please send us an email to PSR_solutions@gmail.com";
        PSR_solutions.Type=@"Refurbishing offices";
        PSR_solutions.Image_1= [UIImage imageNamed: @"PSR.png"];//https://media-exp2.licdn.com/mpr/mpr/shrink_200_200/AAEAAQAAAAAAAAg7AAAAJDc1YmU4ZGVkLWRkY2QtNDk5Yy04Y2ViLTMyM2M2NGMxNGNiZQ.png
    
        Job *Venatu = [[Job alloc]init];
        Venatu.Company_name= @"Venatu Consulting";
        Venatu.pay= @"£9.00 per hour";
        Venatu.hours= @"40 hours a week minimum";
        Venatu.Description=@"Heavy lifting involved so the new employee must be physically fit.\nContact info:\nEmail: Venatu@yahoo.co.uk\nTelephone:074575932079";
        Venatu.Type=@"Housing development";
        Venatu.Image_1= [UIImage imageNamed: @"Venatu.png"];//https://media.licdn.com/mpr/mpr/shrink_200_200/AAEAAQAAAAAAAAi2AAAAJGNmOWEwOWZkLWFlMjYtNDQ5ZS1iNDUxLWU3YjllNTFmYjgxOQ.png
        
        
        Job *Skills_resource = [[Job alloc]init];
        Skills_resource.Company_name= @"Skills Resource";
        Skills_resource.pay= @"From £7.50 to £8.40 per hour";
        Skills_resource.hours= @"37 hours a week minimum";
        Skills_resource.Description=@"Help making bespoke furniture such as dinning tables and chairs. Potential canidates must be highly skilled\nEmail:Skillsresource@hotmail.co.uk";
        Skills_resource.Type=@"Crafting";
        Skills_resource.Image_1= [UIImage imageNamed: @"Skills.png"];//https://www.totaljobs.com/CompanyLogos/2c9ee27c25494144b2370593e1995cbc.png
        
        
        
        
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
        Appleton_Academy.Description=@"Working in a small team you will be required to help with a wide range of IT issues.\nTelephone contact:";
        Appleton_Academy.Type=@"IT support";
        Appleton_Academy.Image_1= [UIImage imageNamed: @"appleton_3.png"];//http://www.appletonacademy.co.uk/templates/appleton/images/appleton-academy.png
        
        
        Job *NRS  = [[Job alloc]init];
        NRS.Company_name= @"Nationwide Retail Systems Ltd ";
        NRS.pay= @"£17,000 per year";
        NRS.hours= @"Flexible week/weekend work";
        NRS.Description=@"requires secondary education\nEmail:NRS@gmail.com";
        NRS.Type=@"IT help desk";
        NRS.Image_1= [UIImage imageNamed: @"NRS_2.jpeg"];//http://www.nrsltd.com/images/logo.png
        
        Job *Christeyns  = [[Job alloc]init];
        Christeyns.Company_name= @"Christeyns ";
        Christeyns.pay= @"Competitive salary";
        Christeyns.hours= @"4 full days a week";
        Christeyns.Description=@"Requires work experience in sector\nEmail us at christeyns.employability@hotmail.co.uk";
        Christeyns.Type=@"IT support";
        Christeyns.Image_1= [UIImage imageNamed: @"christeyns_2.png"];//http://www.christeyns.com/sites/christeyns/themes/the_aim_theme/logo.png
        
        
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
        Ecco_Pizzeria.Description=@"2 years experience required\nEmail:Ecco.pizzeria@gmail.com or call:0777893470";
        Ecco_Pizzeria.Type=@"Preparing Pizza & Pasta dishes";
        Ecco_Pizzeria.Image_1= [UIImage imageNamed: @"EP_3.jpeg"];//https://pbs.twimg.com/profile_images/2645248078/95decb68ffa99ba379661e5369bfe7c6.jpeg
        
        
        Job *P_L = [[Job alloc]init];
        P_L.Company_name= @"Pizza labella";
        P_L.pay= @"£18,000 a year";
        P_L.hours= @"6 evenings a week";
        P_L.Description=@"Not cash in hand, you will be required to prepare large orders so expercience is a must.\nEmail:Pizza_labella@yahoo.com";
        P_L.Type=@"Grill chef";
        P_L.Image_1= [UIImage imageNamed: @"labella_2.jpg"];//http://slice.seriouseats.com/images/2012/01/20120118-daily-slice-la-bella-pizza-garden.jpg
        
        
        Job *EMC = [[Job alloc]init];
        EMC.Company_name= @"Everyman Cinema";
        EMC.pay= @"£15,000 a year";
        EMC.hours= @"5 shifts a week";
        EMC.Description=@"No experience required\nEmail:LeedsEMC@hotmail.co.uk";
        EMC.Type=@"Plating dishes";
        EMC.Image_1= [UIImage imageNamed: @"Everyman-Cinema-Leeds_2.jpg"];//https://www.thingstodowhenitsraining.co.uk/wp-content/uploads/formidable/Everyman-Cinema-Leeds.jpg
        
        
        
        
        
        
        
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
        Greggs.Description=@"Employee benefits available if you meet the required targets.\nEmail-greggsleeds@gmail.com";
        Greggs.Type=@"Store manager";
        Greggs.Image_2= [UIImage imageNamed: @"greggs_2.png"];//http://www.theforumshoppingcentre.co.uk/wp-content/uploads/2017/04/Greggs.png
        
        Job *NHS = [[Job alloc]init];
        NHS.Company_name= @"NHS";
        NHS.pay= @"£20,000 a year";
        NHS.hours= @"3 days a week";
        NHS.Description=@"Must provide 3 years of work refernece\n Contact info: Telephone:07552916878\nEmail:NHS_leedsemployment@hotmail.co.uk";
        NHS.Type=@"Barista";
        NHS.Image_2= [UIImage imageNamed: @"NHS.png"];//https://i0.wp.com/www.kateshahidcoaching.co.uk/wpr2a/wp-content/uploads/NHS-Logo.png
        
        
        Job *Atlas = [[Job alloc]init];
        Atlas.Company_name= @"AtlasCorp";
        Atlas.pay= @"£18,000-£24,000 a year";
        Atlas.hours= @"Flexible hours";
        Atlas.Description=@"Bonus package available\nOur email is AtlasCorp_contact@hotmail.com";
        Atlas.Type=@"Trainee events manager";
        Atlas.Image_2= [UIImage imageNamed: @"AC.png"];//https://vignette1.wikia.nocookie.net/someordinarygamers/images/a/a3/Atlas_corp_logo_dark_by_imaginitivex-d85w06p.png/revision/latest?cb=20150225205759
        
        
        
        [self.hospitality addObject:Greggs];
        [self.hospitality addObject:NHS];
        [self.hospitality addObject:Atlas];
    
        
        //second tableview second array
        
        self.receptionist = [NSMutableArray array];
        Job *Derwent = [[Job alloc]init];
        Derwent.Company_name= @"Derwent";
        Derwent.pay= @"£19,000 a year";
        Derwent.hours= @"Mon,Tues & Thurs 9-5";
        Derwent.Description=@"Wide range of challenging tasks, any potential canidates will need to be prepared to take part in an assessment\nContact info:\nEmail:Derwent_contact@hotmail.com";//https://upload.wikimedia.org/wikipedia/en/0/0a/Derwent-living.jpg
        Derwent.Type=@"Help desk operator";
        Derwent.Image_2= [UIImage imageNamed: @"Derwent.png"];
        
        
   
        Job *RFP = [[Job alloc]init];
        RFP.Company_name= @"Regal Food Products";
        RFP.pay= @"£7.50 an hour";
        RFP.hours= @"4 days a week";
        RFP.Description=@"Minimum of 2-5 years of work experience, preferably in a heavy manufacturing or industrial environment.\nOur Email:RFP@icloud.com";
        RFP.Type=@"Admin Assistant";
        RFP.Image_2= [UIImage imageNamed: @"regal.jpg"];//http://www.ife.co.uk/exhibitor-profile/regal-food-products-ltd
        
        
        
        Job *WLT = [[Job alloc]init];
        WLT.Company_name= @"William Lea Tag";
        WLT.pay= @"£16,000 a year";
        WLT.hours= @"Flexible";
        WLT.Description=@"Due to the high volume of responses received for this role we will not be able to contact all applicants directly. If you have not heard from us in four weeks please consider your application unsuccessful.\nEmail:Williams_tag@gmail.com";
        WLT.Type=@"Office services";
        WLT.Image_2= [UIImage imageNamed: @"WLT.png"];//https://pbs.twimg.com/profile_images/580327113603067904/rXo7GXvD.png
        
        
        [self.receptionist addObject:Derwent];
        [self.receptionist addObject:RFP];
        [self.receptionist addObject:WLT];
        
        
        
        
        //second tableview third array
        
        self.gardening = [NSMutableArray array];
        Job *LCC = [[Job alloc]init];
        LCC.Company_name= @"Leeds council";
        LCC.pay= @"Competitive salary";
        LCC.hours= @"9-5, Wednes-Sun";
        LCC.Description=@"Maintaining the graveyards in Headingley\nEmail:leedscitycouncil@hotmail.co.uk";
        LCC.Type=@"Grave digger";
        LCC.Image_2= [UIImage imageNamed: @"LCC.jpg"];//https://www.ncass.org.uk/images/default-source/default-album/leeds-city-council711BD99E9F14.jpg?sfvrsn=2
        
        
        Job *NCC = [[Job alloc]init];
        NCC.Company_name= @"New Century Care";
        NCC.pay= @"£8.00 an hour";
        NCC.hours= @"30 hours a week";
        NCC.Description=@"Complete the maintenance jobs required for the day\n Email:Newcenturycare@hotmail.co.uk";
        NCC.Type=@"Maintenance person";
        NCC.Image_2= [UIImage imageNamed: @"NCC.png"];//https://pbs.twimg.com/profile_images/884725678989594624/yswrReNz.jpg
        
        
        
        Job *HG = [[Job alloc]init];
        HG.Company_name= @"Horticruitment UK Ltd";
        HG.pay= @"£20,000 a year";
        HG.hours= @"4 days a week";
        HG.Description=@"Head gardener and the job comes with a 3 bed cottage to live in.\n Email: Horticruitment@icloud.com";
        HG.Type=@"Head Gardener";
        HG.Image_2= [UIImage imageNamed: @"HG.png"];//https://horticruitment.com/wp-content/uploads/2017/09/logo.svg
        
        
         [self.gardening addObject:LCC];
         [self.gardening addObject:NCC];
         [self.gardening addObject:HG];
        
        
       
        
        
        
    }
    return self;
}
@end
