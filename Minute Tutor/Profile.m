//
//  Profile.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "Profile.h"
#import "DataCollection.h"
#import "SubSubjects.h"

@interface Profile ()

@end

@implementation Profile

- (void)viewDidLoad {
    [super viewDidLoad];
    tableData = [NSArray arrayWithObjects:@"Integral Calculus", @"Integral Calculus", @"Integral Calculus", @"Integral Calculus", @"Integral Calculus", @"Integral Calculus", nil];

    // Do any additional setup after loading the view.
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

- (IBAction)more:(id)sender {
    DataCollection *viewController = [[DataCollection alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)newSubject:(id)sender {
    SubSubjects *viewController = [[SubSubjects alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
@end
