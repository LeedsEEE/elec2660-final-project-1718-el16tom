//
//  Homepage_ViewController.h
//  Final project
//
//  Created by Tom Maynard [el16tom] on 28/11/2017.
//  Copyright © 2017 University of leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Homepage_ViewController : UIViewController
- (IBAction)Enter_pressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *Logo;
- (IBAction)info_button:(UIButton *)sender;

@end
