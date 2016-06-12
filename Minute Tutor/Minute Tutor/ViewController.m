//
//  ViewController.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "ViewController.h"
#import "HomePage.h"
#import "LanguageArts.h"
#import "Mathematics.h"
#import "History.h"
#import "Technology.h"
#import "Science.h"
#import "WorldLanguage.h"
#import "myTutor.h"
#import "AppDelegate.h"

#import <Firebase/Firebase.h>
@import Firebase;

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.tutor = -1;
    
    tableData = [NSArray arrayWithObjects:@"Egg Benedict", nil];
}
- (void) viewWillAppear:(BOOL)animated {
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    
    FIRDatabaseReference *rootRef= [[FIRDatabase database] reference];
    
    [rootRef observeEventType:FIRDataEventTypeChildAdded withBlock:^(FIRDataSnapshot *snapshot) {
        NSLog(@"hi %@", snapshot.value[@"name"]);
        NSArray *tutors = snapshot.value[@"myTutors"];
        for(int x = 0; x < tutors.count; x++) {
            [arr addObject:@"x"];
        }
        tableData = arr;
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didTapSignOut:(id)sender {
    [[GIDSignIn sharedInstance] signOut];
}
- (IBAction)languageArts:(id)sender {
    LanguageArts *viewController = [[LanguageArts alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)mathematics:(id)sender {
    Mathematics *viewController = [[Mathematics alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)history:(id)sender {
    History *viewController = [[History alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)technology:(id)sender {
    Technology *viewController = [[Technology alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)science:(id)sender {
    Science *viewController = [[Science alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)worldLanguage:(id)sender {
    WorldLanguage *viewController = [[WorldLanguage alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    static NSString *CellIdentifier = @"Cell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenWidth = screenSize.width;
    CGFloat screenHeight = screenSize.height;
    
    myTutor *viewController = [[myTutor alloc] init];
    cell.backgroundColor = [UIColor colorWithRed:255/255.0 green:254/255.0 blue:235/255.0 alpha:1];

    UIView *graphView = viewController.view;
    
    CGRect x = graphView.bounds;
    
    x.origin.x = screenWidth/2 * -1 + 160;
    x.size.width = 320;
    graphView.bounds = x;
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    else{
        [[cell.contentView viewWithTag:500] removeFromSuperview];
    }
    
    graphView.tag = 500;
    [cell.contentView addSubview:graphView];
//    appDelegate.tutor++;
    return cell;
}

@end
