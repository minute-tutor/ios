//
//  myTutor.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "myTutor.h"
#import "AppDelegate.h"

#import <Firebase/Firebase.h>
@import Firebase;

@interface myTutor ()

@end

@implementation myTutor

@synthesize name, image, star5, star4, star3, star2, star1, rate, dateTime;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.tutor++;
    
    FIRDatabaseReference *rootRef= [[FIRDatabase database] reference];
    
    
    [rootRef observeEventType:FIRDataEventTypeChildAdded withBlock:^(FIRDataSnapshot *snapshot) {
        NSArray *tutors = snapshot.value[@"myTutors"];
        NSDictionary *tutor = tutors[appDelegate.tutor];
        
        name.text = [tutor valueForKey:@"name"];
        rate.text = [NSString stringWithFormat:@"%@%@%@", @"$", [tutor valueForKey:@"rate"], @" / min"];
        dateTime.text = [tutor valueForKey:@"dateTime"];
        
        UIImage *fullStar = [UIImage imageNamed: @"full_star.png"];
        UIImage *outlineStar = [UIImage imageNamed: @"outline_star.png"];
        
        int review = [tutor valueForKey:@"rating"];
        
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
        
    }];
    

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
