//
//  Profile.h
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Profile : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSArray *tableData;
    NSMutableArray *skills;
}
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *rate;
@property (strong, nonatomic) IBOutlet UIImageView *star1;
@property (strong, nonatomic) IBOutlet UIImageView *star2;
@property (strong, nonatomic) IBOutlet UIImageView *star3;
@property (strong, nonatomic) IBOutlet UIImageView *star4;
@property (strong, nonatomic) IBOutlet UIImageView *star5;
- (IBAction)save:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *tableVie;

@end
