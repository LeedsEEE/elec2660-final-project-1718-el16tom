//
//  Part_time_TableViewController.m
//  Final project
//
//  Created by Tom Maynard [el16tom] on 14/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import "Part_time_TableViewController.h"

@interface Part_time_TableViewController ()

@end

@implementation Part_time_TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.job_info = [[FullTime_info alloc]init];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSUInteger count;
    
   
    if(section==0){
        count = self.job_info.hospitality.count;
    }else if(section==1){
          count = self.job_info.receptionist.count;
    }else{
          count = self.job_info.gardening.count;
    }
    
    return count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    // 1. The view for the header
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 27)];
    
    // 2.background
    headerView.backgroundColor = NULL;
    headerView.layer.borderColor = [UIColor blackColor].CGColor;
    headerView.layer.borderWidth = 2.0;
    headerView.layer.cornerRadius= 4.0;
    // 3. Add a label
    
    
    UILabel* headerLabel = [[UILabel alloc] init];
    headerLabel.frame = CGRectMake(2, 0, tableView.frame.size.width - 5, 30);
    headerLabel.backgroundColor = [UIColor whiteColor];
    headerLabel.textColor = [UIColor blueColor];
    headerLabel.font = [UIFont boldSystemFontOfSize:16.0];
    headerLabel.textAlignment = NSTextAlignmentCenter;
    
    
    
    
    if(section==0){
        headerLabel.text = @"Hospitality";
        
    }
    if(section==1){
        headerLabel.text = @"Recptionist";
    }
    if(section==2){
        headerLabel.text = @"Gardening";
    }
    
    
    
    // 4. Add the label to the header view
    [headerView addSubview:headerLabel];
    
    
    
    
    
    // 5. Finally return
    return headerView;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell_2" forIndexPath:indexPath];
    
  
    
   
        
    if(indexPath.section==0){
        Job *tempJob= [self.job_info.hospitality  objectAtIndex: indexPath.row];
        
        cell.textLabel.text= tempJob.Company_name;
        cell.detailTextLabel.text= tempJob.Type;
        cell.image = tempJob.Image_2;
        //set borders in table view
        cell.contentView.layer.cornerRadius=4;
        cell.contentView.layer.borderWidth=2;
        cell.contentView.layer.borderColor= [UIColor blackColor].CGColor;
    }
    if(indexPath.section==1){
        Job *tempJob= [self.job_info.receptionist  objectAtIndex: indexPath.row];
        
        cell.textLabel.text= tempJob.Company_name;
        cell.detailTextLabel.text= tempJob.Type;
        cell.image = tempJob.Image_2;
        //set borders in table view
        cell.contentView.layer.cornerRadius=4;
        cell.contentView.layer.borderWidth=2;
        cell.contentView.layer.borderColor= [UIColor blackColor].CGColor;
    }
    if (indexPath.section==2) {
        Job *tempJob= [self.job_info.gardening  objectAtIndex: indexPath.row];
        
        cell.textLabel.text= tempJob.Company_name;
        cell.detailTextLabel.text= tempJob.Type;
        cell.image = tempJob.Image_2;
        //set borders in table view
        cell.contentView.layer.cornerRadius=4;
        cell.contentView.layer.borderWidth=2;
        cell.contentView.layer.borderColor= [UIColor blackColor].CGColor;
    }
    
        
 
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.


    if ([[segue identifier] isEqualToString:@"ShowJob"]) {
        
        
        Part_time_ViewController *destinationViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath= [self.tableView indexPathForSelectedRow];
        if(indexPath.section==0){
            Job *tempJob = [self.job_info.hospitality  objectAtIndex:indexPath.row ];
            destinationViewController.job= tempJob;
        }
        if(indexPath.section==1){
            Job *tempJob = [self.job_info.receptionist  objectAtIndex:indexPath.row ];
            destinationViewController.job= tempJob;
        }
        if(indexPath.section==2){
            Job *tempJob = [self.job_info.gardening  objectAtIndex:indexPath.row ];
            destinationViewController.job= tempJob;
        }
    }

}


@end
