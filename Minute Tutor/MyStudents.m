//
//  MyStudents.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "MyStudents.h"

#import <Firebase/Firebase.h>
@import Firebase;

@interface MyStudents ()

@end

@implementation MyStudents

- (void)viewDidLoad {
    [super viewDidLoad];
    tableData = [NSArray arrayWithObjects:@"Date - Name - Time", @"Date - Name - Time", @"Date - Name - Time", @"Date - Name - Time", @"Date - Name - Time", @"Date - Name - Time", @"Date - Name - Time", @"Date - Name - Time", @"Date - Name - Time", nil];
    
    
    

    // Do any additional setup after loading the view.
}
-(void) viewWillAppear:(BOOL)animated {
    arr = [[NSMutableArray alloc] init];

    FIRDatabaseReference *rootRef= [[FIRDatabase database] reference];
    
    [rootRef observeEventType:FIRDataEventTypeChildAdded withBlock:^(FIRDataSnapshot *snapshot) {
        NSLog(@"hi %@", snapshot.value[@"name"]);
        NSArray *students = snapshot.value[@"myStudents"];
        for(int x = 0; x < students.count; x++) {
            NSDictionary *student = students[x];
            NSLog([student valueForKey:@"name"]);
            NSString *strRR = [NSString stringWithFormat:@"%@%@%@%@%@", [student valueForKey:@"date"], @"  -  ", [student valueForKey:@"name"], @"  -  ", [student valueForKey:@"time"]];
            
            [arr addObject: strRR];
        }
        
        NSLog(arr[0]);
        tableData = arr;
        [tableVie reloadData];
    }];
}

-(void) updateTable {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

@end
