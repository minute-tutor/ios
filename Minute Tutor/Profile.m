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

#import <Firebase/Firebase.h>
@import Firebase;

@interface Profile ()

@end

@implementation Profile

@synthesize name, rate, star1, star2, star3, star4, star5, tableVie;

- (void)viewDidLoad {
    [super viewDidLoad];
    tableData = [NSArray arrayWithObjects:@"Integral Calculus", @"Integral Calculus", @"Integral Calculus", @"Integral Calculus", @"Integral Calculus", @"Integral Calculus", nil];
    

    // Do any additional setup after loading the view.
}

-(void) viewWillAppear:(BOOL)animated {
    
    FIRDatabaseReference *rootRef= [[FIRDatabase database] reference];
    
    skills = [[NSMutableArray alloc] init];
    
    [rootRef observeEventType:FIRDataEventTypeChildAdded withBlock:^(FIRDataSnapshot *snapshot) {
        NSLog(@"hi %@", snapshot.value[@"name"]);
        name.text = snapshot.value[@"name"];
        rate.text = [NSString stringWithFormat:@"%@", snapshot.value[@"rate"]];
        NSArray *reviews = snapshot.value[@"reviews"];
        int total = 0;
        for(int x = 0;  x < reviews.count; x++) {
            total += [reviews[x] intValue];
        }
        int x = (int) reviews.count;
        int review = total/x;
        UIImage *fullStar = [UIImage imageNamed: @"full_star.png"];
        UIImage *outlineStar = [UIImage imageNamed: @"outline_star.png"];
        
        if(review == 0) {
            [star1 setImage:outlineStar];
            [star2 setImage:outlineStar];
            [star3 setImage:outlineStar];
            [star4 setImage:outlineStar];
            [star5 setImage:outlineStar];
        }
        if(review == 1) {
            [star1 setImage:fullStar];
            [star2 setImage:outlineStar];
            [star3 setImage:outlineStar];
            [star4 setImage:outlineStar];
            [star5 setImage:outlineStar];
        }
        if(review == 2) {
            [star1 setImage:fullStar];
            [star2 setImage:fullStar];
            [star3 setImage:outlineStar];
            [star4 setImage:outlineStar];
            [star5 setImage:outlineStar];
        }
        if(review == 3) {
            [star1 setImage:fullStar];
            [star2 setImage:fullStar];
            [star3 setImage:fullStar];
            [star4 setImage:outlineStar];
            [star5 setImage:outlineStar];
        }
        if(review == 4) {
            [star1 setImage:fullStar];
            [star2 setImage:fullStar];
            [star3 setImage:fullStar];
            [star4 setImage:fullStar];
            [star5 setImage:outlineStar];
        }
        if(review == 5) {
            [star1 setImage:fullStar];
            [star2 setImage:fullStar];
            [star3 setImage:fullStar];
            [star4 setImage:fullStar];
            [star5 setImage:fullStar];
        }
        
        NSDictionary *skillSet = snapshot.value[@"skills"];
        NSDictionary *english = [skillSet valueForKey:@"english"];
        NSDictionary *history = [skillSet valueForKey:@"history"];
        NSDictionary *language = [skillSet valueForKey:@"language"];
        NSDictionary *math = [skillSet valueForKey:@"math"];
        NSDictionary *science = [skillSet valueForKey:@"science"];
        NSDictionary *technology = [skillSet valueForKey:@"technology"];
        
        
        
        if([[english valueForKey:@"grammar"] boolValue] == YES) {
            [skills addObject:@"Grammar"];
        }
        if([[english valueForKey:@"literature"] boolValue] == YES) {
            [skills addObject:@"Literature"];
        }
        if([[english valueForKey:@"rhetoric"] boolValue] == YES) {
            [skills addObject:@"Rhetoric"];
        }
        if([[english valueForKey:@"spelling"] boolValue] == YES) {
            [skills addObject:@"Spelling"];
        }
        if([[english valueForKey:@"vocabulary"] boolValue] == YES) {
            [skills addObject:@"Vocabulary"];
        }
        
        if([[history valueForKey:@"contemporary"] boolValue] == YES) {
            [skills addObject:@"Contemporary History"];
        }
        if([[history valueForKey:@"economics"] boolValue] == YES) {
            [skills addObject:@"Economics"];
        }
        if([[history valueForKey:@"european"] boolValue] == YES) {
            [skills addObject:@"European History"];
        }
        if([[history valueForKey:@"us"] boolValue] == YES) {
            [skills addObject:@"US History"];
        }
        if([[history valueForKey:@"world"] boolValue] == YES) {
            [skills addObject:@"World History"];
        }
        
        if([[language valueForKey:@"french"] boolValue] == YES) {
            [skills addObject:@"French"];
        }
        if([[language valueForKey:@"hindi"] boolValue] == YES) {
            [skills addObject:@"Hindi"];
        }
        if([[language valueForKey:@"japanese"] boolValue] == YES) {
            [skills addObject:@"Japanese"];
        }
        if([[language valueForKey:@"mandarin"] boolValue] == YES) {
            [skills addObject:@"Mandarin"];
        }
        if([[language valueForKey:@"spanish"] boolValue] == YES) {
            [skills addObject:@"Spanish"];
        }
        
        if([[math valueForKey:@"algebra"] boolValue] == YES) {
            [skills addObject:@"Algebra"];
        }
        if([[math valueForKey:@"calculus"] boolValue] == YES) {
            [skills addObject:@"Calculus"];
        }
        if([[math valueForKey:@"geometry"] boolValue] == YES) {
            [skills addObject:@"Geometry"];
        }
        if([[math valueForKey:@"statistics"] boolValue] == YES) {
            [skills addObject:@"Statistics"];
        }
        if([[math valueForKey:@"trigonometry"] boolValue] == YES) {
            [skills addObject:@"Trigonometry"];
        }
        
        if([[science valueForKey:@"astronomy"] boolValue] == YES) {
            [skills addObject:@"Astronomy"];
        }
        if([[science valueForKey:@"biology"] boolValue] == YES) {
            [skills addObject:@"Biology"];
        }
        if([[science valueForKey:@"chemistry"] boolValue] == YES) {
            [skills addObject:@"Chemistry"];
        }
        if([[science valueForKey:@"environmental"] boolValue] == YES) {
            [skills addObject:@"Environmental Science"];
        }
        if([[science valueForKey:@"physics"] boolValue] == YES) {
            [skills addObject:@"Physics"];
        }
        
        if([[technology valueForKey:@"ai"] boolValue] == YES) {
            [skills addObject:@"Artificial Intelligence"];
        }
        if([[technology valueForKey:@"hardware"] boolValue] == YES) {
            [skills addObject:@"Hardware"];
        }
        if([[technology valueForKey:@"WebDevelopment"] boolValue] == YES) {
            [skills addObject:@"Web Dvelopment"];
        }
        if([[technology valueForKey:@"Java"] boolValue] == YES) {
            [skills addObject:@"Java"];
        }
        if([[technology valueForKey:@"networking"] boolValue] == YES) {
            [skills addObject:@"Networking"];
        }
        
        tableData = skills;
        [tableVie reloadData];
    }];
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
- (IBAction)save:(id)sender {
}
@end
