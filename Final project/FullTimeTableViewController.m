//
//  FullTimeTableViewController.m
//  Final project
//
//  Created by Tom Maynard [el16tom] on 14/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import "FullTimeTableViewController.h"
#import "FullTimeViewController.h"





@interface FullTimeTableViewController ()

@end

@implementation FullTimeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.job_info= [[FullTime_info alloc]init];
    
    

    
    
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

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    if (indexPath.section==0) {
        
        
        Job *tempJob= [self.job_info.Manual_labour objectAtIndex: indexPath.row];
        
        cell.textLabel.text= tempJob.Company_name;
        cell.detailTextLabel.text= tempJob.Type;
        
        cell.contentView.layer.cornerRadius=4;
        cell.contentView.layer.borderWidth=2;
        cell.contentView.layer.borderColor= CFBridgingRetain([UIColor yellowColor]);
        
        
        
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
    
    if ([[segue identifier] isEqualToString:@"showjobinfo"]) {
        NSLog(@"showjobinfo");
        
      FullTimeViewController *destinationViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath= [self.tableView indexPathForSelectedRow];
            Job *tempJob = [self.job_info.Manual_labour objectAtIndex:indexPath.row ];
            NSLog(@"temp job company = %@",tempJob.Company_name);
            destinationViewController.job= tempJob;
    }
}


@end
